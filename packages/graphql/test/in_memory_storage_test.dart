import 'dart:async';
<<<<<<< HEAD
import 'package:graphql/src/io.dart' show Directory;
=======
import 'dart:io' show Directory, FileSystemException;
>>>>>>> 4fa6c5742778b89e839d81498c0350f6627e737d
import 'package:test/test.dart';
import 'package:graphql/src/cache/in_memory.dart';

const String aKey = 'aKey';
const String bKey = 'bKey';
const String cKey = 'cKey';
const String dKey = 'dKey';
const String eKey = 'eKey';

final Map<String, Object> aData = <String, Object>{
  'a': <String, Object>{
    '__typename': 'A',
  }
};

final Map<String, Object> bData = <String, Object>{
  'b': <String, Object>{
    '__typename': 'B',
  }
};

final Map<String, Object> cData = <String, Object>{
  'c': <String, Object>{
    '__typename': 'C',
  }
};

final Map<String, Object> dData = <String, Object>{
  'd': <String, Object>{
    '__typename': 'D',
  }
};

final Map<String, Object> eData = <String, Object>{
  'e': <String, Object>{
    '__typename': 'E',
  }
};

final Future<Directory> customStorageDirectory =
    Directory.systemTemp.createTemp('file_test_');

void main() {
  group('Normalizes writes', () {
    test('.write .read round trip', () async {
      final InMemoryCache cache = InMemoryCache(
        storageProvider: () => customStorageDirectory,
      );
      cache.write(aKey, aData);
      await cache.save();
      cache.reset();
      await cache.restore();
      expect(cache.read(aKey), equals(aData));
    }, onPlatform: {
      "browser": Skip("Browser does not support dart:io (see #295)")
    });

    test('.write avoids overriding a superset with a subset of a field (#155)',
        () async {
      final InMemoryCache cache = InMemoryCache(
        storageProvider: () => customStorageDirectory,
      );
      cache.write(aKey, aData);

      final Map<String, Object> anotherAData = <String, Object>{
        'a': <String, Object>{
          'key': 'val',
        },
      };
      cache.write(aKey, anotherAData);

      await cache.save();
      cache.reset();
      await cache.restore();
      expect(
        cache.read(aKey),
        equals(<String, Object>{
          'a': {'__typename': 'A', 'key': 'val'}
        }),
      );
    }, onPlatform: {
      "browser": Skip("Browser does not support dart:io (see #295)")
    });

    test('.write does not mutate input', () async {
      final InMemoryCache cache = InMemoryCache(
        storageProvider: () => customStorageDirectory,
      );
      cache.write(aKey, aData);
      final Map<String, Object> anotherAData = <String, Object>{
        'a': <String, Object>{
          'key': 'val',
        },
      };
      cache.write(aKey, anotherAData);

      expect(
        aData,
        equals(<String, Object>{
          'a': {'__typename': 'A'}
        }),
      );
      expect(
        anotherAData,
        equals(<String, Object>{
          'a': {'key': 'val'}
        }),
      );
    }, onPlatform: {
      "browser": Skip("Browser does not support dart:io (see #295)")
    });

    test('saving concurrently wont error', () async {
      final InMemoryCache cache = InMemoryCache(
        storageProvider: () => customStorageDirectory,
      );
      cache.write(aKey, aData);
      cache.write(bKey, bData);
      cache.write(cKey, cData);
      cache.write(dKey, dData);
      cache.write(eKey, eData);

      await Future.wait(<Future<void>>[
        cache.save(),
        cache.save(),
        cache.save(),
        cache.save(),
        cache.save(),
      ]);

      cache.reset();
      await cache.restore();

      expect(cache.read(aKey), equals(aData));
      expect(cache.read(bKey), equals(bData));
      expect(cache.read(cKey), equals(cData));
      expect(cache.read(dKey), equals(dData));
      expect(cache.read(eKey), equals(eData));
    }, onPlatform: {
      "browser": Skip("Browser does not support dart:io (see #295)")
    });
  });

  group('Exception handling', () {
    test('FileSystemException', overridePrint((List<String> log) async {
      final InMemoryCache cache = InMemoryCache(
        storageProvider: () {
          throw FileSystemException();
        },
      );
      await cache.restore();
      expect(
        log,
        ['Can\'t read file from storage, returning an empty HashMap.'],
      );
    }));
  });
}

overridePrint(testFn(List<String> log)) => () {
      final log = <String>[];
      final spec = new ZoneSpecification(print: (_, __, ___, String msg) {
        log.add(msg);
      });
      return Zone.current.fork(specification: spec).run(() => testFn(log));
    };
