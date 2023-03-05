import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:seventh_player/core/data/local/data_storage_impl.dart';
import 'package:seventh_player/core/data/models/user_model.dart';

part 'helper_store.g.dart';

class HelperStore = HelperStoreBase with _$HelperStore;

abstract class HelperStoreBase with Store {
  @observable
  UserModel? userModel;

  @observable
  String? tokenAccess;

  @action
  Future<void> createUserDataStorage(UserModel user, String token) async {
    userModel = user;
    tokenAccess = token;
    await GetIt.instance.get<DataStorageImpl>().createUserData(user);
    await GetIt.instance.get<DataStorageImpl>().createTokenData(token);
  }

  @action
  Future<void> readUserFromDataStorage() async {
    await GetIt.instance.get<DataStorageImpl>().readUserData();
  }

  @action
  Future<void> deleteUserDataStorage() async {
    await GetIt.instance.get<DataStorageImpl>().deleteData();
    userModel = null;
    tokenAccess = null;
  }
}
