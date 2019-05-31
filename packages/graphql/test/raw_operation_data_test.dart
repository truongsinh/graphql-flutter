import 'dart:io';

import 'package:test/test.dart';
import 'package:graphql/src/core/raw_operation_data.dart';

void main() {
  // group('RawOperationData', () {
  //   test('minimal input does not break', () {
  //     RawOperationData(document: '');
  //   });
  //   test('toKey() on scalar type variables', () {
  //     final op = RawOperationData(document: 'a', variables: {
  //       'a': 'b',
  //       'c': [
  //         {'d': 2}
  //       ]
  //     });
  //     expect(op.toKey(), 'a|{"a":"b","c":[{"d":2}]}|UNNAMED/170824770');
  //   });
  //   test('toKey() on File type variables', () {
  //     final op = RawOperationData(document: 'a', variables: {
  //       'a': 'b',
  //       'c': [
  //         {'d': File('/tmp/path')}
  //       ]
  //     });
  //     expect(op.toKey(), 'a|{"a":"b","c":[{"d":"/tmp/path"}]}|UNNAMED/170824770');
  //   });
  // });
}
