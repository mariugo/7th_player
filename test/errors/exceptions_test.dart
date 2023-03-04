import 'package:flutter_test/flutter_test.dart';
import 'package:seventh_player/core/errors/exceptions.dart';

main() {
  final appException = AppException(message: 'Test message');
  final unauthorizedException =
      UnauthorizedException(message: 'Unauthorized Exception message');
  final notFoundException =
      NotFoundException(message: 'Not found Exception message');
  final serverException = ServerException(message: 'Server Exception message');
  final badRequestException =
      BadRequestException(message: 'Bad Request Exception message');

  group('appException', () {
    test('should be instance of AppExcption', () {
      expect(appException, isA<AppException>());
    });
    test('should be instance of Exception', () {
      expect(appException, isA<Exception>());
    });
    test('should have a message', () {
      expect(appException.message, isNotEmpty);
    });
  });

  group('notFoundException', () {
    test('should be instance of NotFoundException', () {
      expect(notFoundException, isA<NotFoundException>());
    });
    test('should be instance of AppException', () {
      expect(notFoundException, isA<AppException>());
    });
    test('should have a message', () {
      expect(notFoundException.message, isNotEmpty);
    });
  });

  group('unauthorizedException', () {
    test('should be instance of UnauthorizedException', () {
      expect(unauthorizedException, isA<UnauthorizedException>());
    });
    test('should be instance of AppException', () {
      expect(unauthorizedException, isA<AppException>());
    });
    test('should have a message', () {
      expect(unauthorizedException.message, isNotEmpty);
    });
  });

  group('serverException', () {
    test('should be instance of ServerException', () {
      expect(serverException, isA<ServerException>());
    });
    test('should be instance of AppException', () {
      expect(serverException, isA<AppException>());
    });
    test('should have a message', () {
      expect(serverException.message, isNotEmpty);
    });
  });

  group('badRequestException', () {
    test('should be instance of UnauthorizedException', () {
      expect(badRequestException, isA<BadRequestException>());
    });
    test('should be instance of AppException', () {
      expect(badRequestException, isA<AppException>());
    });
    test('should have a message', () {
      expect(badRequestException.message, isNotEmpty);
    });
  });
}
