import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:graphql_client/graphql_client.dart' show NormalizedInMemoryCache;

class InMemoryCacheVM extends NormalizedInMemoryCache {
  @override
  Future<Directory> get temporaryDirectory async => getApplicationDocumentsDirectory();
}
