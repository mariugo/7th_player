import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seventh_player/core/errors/exceptions.dart';

class HttpClientAdapter extends http.BaseClient {
  final http.Client client;

  HttpClientAdapter({
    required this.client,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return client.send(request);
  }

  returnResponse(http.Response response) {
    var responseDecoded = jsonDecode(response.body);
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(
          message: '${responseDecoded['message']}',
        );
      case 401:
        throw UnauthorizedException(
          message: '${responseDecoded['message']}',
        );
      case 404:
        throw NotFoundException(
          message: '${responseDecoded['message']}',
        );
      default:
        break;
    }
  }
}
