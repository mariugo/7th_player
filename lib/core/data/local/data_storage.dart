import 'package:seventh_player/core/data/models/user_model.dart';

abstract class DataStorage {
  Future<bool> createUserData(UserModel userModel);
  Future<bool> createTokenData(String token);
  Future<UserModel> readUserData();
  Future<String> readTokenData();
  Future<void> deleteData();
}
