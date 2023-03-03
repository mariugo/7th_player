class AppException implements Exception {
  String message;

  AppException({
    required this.message,
  });
}

class BadRequestException extends AppException {
  BadRequestException({required super.message});
}

class UnauthorizedException extends AppException {
  UnauthorizedException({required super.message});
}

class NotFoundException extends AppException {
  NotFoundException({required super.message});
}

class ServerException extends AppException {
  ServerException({required super.message});
}
