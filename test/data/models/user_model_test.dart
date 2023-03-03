import 'package:flutter_test/flutter_test.dart';
import 'package:seventh_player/core/data/models/user_model.dart';

void main() {
  final json = {'username': 'mariugo', 'password': '13456'};
  final userModel = UserModel.fromJson(json);

  group('userModel', () {
    test('should be instance of UserModel', () {
      expect(userModel, isA<UserModel>());
    });
    test('should have username as mariugo', () {
      expect(userModel.username, 'mariugo');
    });
    test('should have password as 13456', () {
      expect(userModel.password, '13456');
    });
  });
}
