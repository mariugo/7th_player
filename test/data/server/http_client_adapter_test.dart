import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:seventh_player/core/data/server/http_client_adapter.dart';
import 'package:seventh_player/core/errors/exceptions.dart';

void main() {
  final httpClientAdapter = HttpClientAdapter(client: http.Client());

  group('httpClientAdapter', () {
    test('should be instance of HttpClientAdapter', () {
      expect(httpClientAdapter, isA<HttpClientAdapter>());
    });
    test('should be instance of http.BaseClient', () {
      expect(httpClientAdapter, isA<http.BaseClient>());
    });
    test('client variable should be of http.Client', () {
      expect(httpClientAdapter.client, isA<http.Client>());
    });
  });
}
