import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:seventh_player/core/constants/server.dart';
import 'package:seventh_player/core/data/models/user_model.dart';
import 'package:seventh_player/core/repositories/auth_repository_impl.dart';
import 'package:seventh_player/core/server/http_client_adapter.dart';

import 'auth_repository_test.mocks.dart';

@GenerateMocks([HttpClientAdapter])
void main() {
  final mockHttp = MockHttpClientAdapter();
  final authRepository = AuthRepositoryImpl(httpClient: mockHttp);

  test('Should log in', () async {
    final userModel =
        UserModel(username: 'candidato-seventh', password: '8n5zSrYq');
    when(mockHttp.post(Uri.parse('$baseUrl/login'), body: userModel.toJson()))
        .thenAnswer((_) async => http.Response('{"token": "string"}', 200));
    final response = await authRepository.login(userModel);
    expect(response, isA<String>());
  });
}
