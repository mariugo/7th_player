import 'dart:convert';

import 'package:seventh_player/core/constants/server.dart';
import 'package:seventh_player/core/server/http_client_adapter.dart';
import 'package:seventh_player/core/domain/repositories/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final HttpClientAdapter httpClient;

  VideoRepositoryImpl({
    required this.httpClient,
  });

  @override
  Future getVideoUrl(String token, String fileName) async {
    final response = await httpClient.get(
      Uri.parse('$baseUrl/video/$fileName'),
      headers: {
        'X-Access-Token': token,
      },
    );
    final responseDecoded = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return responseDecoded['url'];
    } else {
      return httpClient.returnResponse(response);
    }
  }
}
