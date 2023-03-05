// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helper_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HelperStore on HelperStoreBase, Store {
  late final _$userModelAtom =
      Atom(name: 'HelperStoreBase.userModel', context: context);

  @override
  UserModel? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  late final _$tokenAccessAtom =
      Atom(name: 'HelperStoreBase.tokenAccess', context: context);

  @override
  String? get tokenAccess {
    _$tokenAccessAtom.reportRead();
    return super.tokenAccess;
  }

  @override
  set tokenAccess(String? value) {
    _$tokenAccessAtom.reportWrite(value, super.tokenAccess, () {
      super.tokenAccess = value;
    });
  }

  late final _$createUserDataStorageAsyncAction =
      AsyncAction('HelperStoreBase.createUserDataStorage', context: context);

  @override
  Future<void> createUserDataStorage(UserModel user, String token) {
    return _$createUserDataStorageAsyncAction
        .run(() => super.createUserDataStorage(user, token));
  }

  late final _$readUserFromDataStorageAsyncAction =
      AsyncAction('HelperStoreBase.readUserFromDataStorage', context: context);

  @override
  Future<void> readUserFromDataStorage() {
    return _$readUserFromDataStorageAsyncAction
        .run(() => super.readUserFromDataStorage());
  }

  late final _$deleteUserDataStorageAsyncAction =
      AsyncAction('HelperStoreBase.deleteUserDataStorage', context: context);

  @override
  Future<void> deleteUserDataStorage() {
    return _$deleteUserDataStorageAsyncAction
        .run(() => super.deleteUserDataStorage());
  }

  @override
  String toString() {
    return '''
userModel: ${userModel},
tokenAccess: ${tokenAccess}
    ''';
  }
}
