import 'package:seventh_player/core/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.username,
    required super.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        username: json['username'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };
}
