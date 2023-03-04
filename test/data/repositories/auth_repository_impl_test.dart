import 'package:flutter_test/flutter_test.dart';
import 'package:seventh_player/core/data/models/user_model.dart';
import 'package:seventh_player/core/data/repositories/auth_repository_impl.dart';
import 'package:seventh_player/core/data/server/http_client_adapter.dart';
import 'package:http/http.dart' as http;

void main() {
  final authRepository =
      AuthRepositoryImpl(httpClient: HttpClientAdapter(client: http.Client()));

  test('Should Login', () async {
    final userModel =
        UserModel(username: 'candidato-seventh', password: '8n5zSrYq');
    final response = await authRepository.login(userModel);
    expect(response, isA<String>());
  });

  test('Should NOT Login error 401', () async {
    final userModel = UserModel(username: 'mariugo', password: 'strasdfafing');
    expect(() async => await authRepository.login(userModel), throwsException);
  });
}
