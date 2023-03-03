import 'dart:convert';
import 'package:seventh_player/core/data/local/data_storage.dart';
import 'package:seventh_player/core/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataStorageImpl implements DataStorage {
  static const userDetails = 'user-details';
  static const userToken = 'token';

  late SharedPreferences sharedPreferences;

  @override
  Future<void> deleteData() async {
    await sharedPreferences.remove(userDetails);
  }

  @override
  Future<bool> createTokenData(String token) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(userToken, token);
  }

  @override
  Future<bool> createUserData(UserModel userModel) async {
    final userModelJson = jsonEncode(userModel);
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(userDetails, userModelJson);
  }

  @override
  Future<String> readTokenData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final token = sharedPreferences.getString(userToken);
    if (token != null) {
      return token;
    } else {
      throw Exception();
    }
  }

  @override
  Future<UserModel> readUserData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final userModelJson = sharedPreferences.getString(userDetails);
    if (userModelJson != null) {
      final jsonDecoded = jsonDecode(userModelJson);
      UserModel userModel = UserModel.fromJson(jsonDecoded);
      return userModel;
    } else {
      throw Exception();
    }
  }
}
