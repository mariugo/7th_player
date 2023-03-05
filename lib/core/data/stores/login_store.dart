import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:seventh_player/core/data/models/user_model.dart';
import 'package:seventh_player/core/data/stores/user_data_store.dart';
import 'package:seventh_player/core/errors/exceptions.dart';
import 'package:seventh_player/core/repositories/auth_repository_impl.dart';
import 'package:seventh_player/core/server/http_client_adapter.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool obscureText = true;

  @observable
  bool isCheckboxChecked = false;

  @observable
  bool isLoading = false;

  @observable
  dynamic errorMessage;

  @action
  void setUsername(String value) => username = value.trim();

  @action
  void setPassword(String value) => password = value.trim();

  @action
  void setLoading(bool value) => isLoading = value;

  @action
  void setErrorMessage(dynamic value) => errorMessage = value;

  @action
  void setCheckbox(bool? value) {
    isCheckboxChecked = value!;
    obscureText = !isCheckboxChecked;
  }

  Future<void> loginWithUsernamePassword(BuildContext context) async {
    setLoading(true);
    setErrorMessage(null);
    final UserModel userModel =
        UserModel(username: username, password: password);
    try {
      final responseToken = await AuthRepositoryImpl(
              httpClient: GetIt.instance<HttpClientAdapter>())
          .login(userModel);
      GetIt.instance
          .get<UserDataStore>()
          .createUserDataStorage(userModel, responseToken);
    } on AppException catch (error) {
      setErrorMessage(error.message);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          duration: const Duration(seconds: 3),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () => Navigator.of(context).dispose(),
          ),
        ),
      );
    }
    setLoading(false);
  }

  void logout() {
    GetIt.instance.get<UserDataStore>().deleteUserDataStorage();
  }
}
