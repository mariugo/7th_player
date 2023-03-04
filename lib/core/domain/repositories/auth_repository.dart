import 'package:flutter/material.dart';
import 'package:seventh_player/core/data/models/user_model.dart';

abstract class AuthRepository {
  Future login(UserModel userModel);
}
