import 'package:flutter_test/flutter_test.dart';
import 'package:seventh_player/core/domain/entities/user.dart';

main() {
  final User user = User(username: 'mariugo', password: 'asdfafdafa');
  group('user', () {
    test('should be instance of User', () {
      expect(user, isA<User>());
    });
    test('should have username as mariugo', () {
      expect(user.username, 'mariugo');
    });
    test('should have password as 13456', () {
      expect(user.password, 'asdfafdafa');
    });
  });
}
