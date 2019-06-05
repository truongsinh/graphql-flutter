
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

main() {
  group('GraphQLConsumer56', () {
    test('1 raises assertion error because of lack of GraphQLProvider',
        () async {
      var client = HttpClient();
      var url = Uri.parse(
          'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3.jpg');
      var req = await client.get(
        url.host,
        url.port,
        url.path,
      );
      var resp = await req.close();
      print(resp.statusCode);
    });
    testWidgets('2raises assertion error because of lack of GraphQLProvider',
        (WidgetTester tester) async {
      var resp = await new http.Client().get(
          'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3.jpg');
      print(resp.bodyBytes);
    });
  });
}
