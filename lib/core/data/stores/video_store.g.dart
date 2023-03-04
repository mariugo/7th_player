// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VideoStore on VideoStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'VideoStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$urlAtom = Atom(name: 'VideoStoreBase.url', context: context);

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: 'VideoStoreBase.errorMessage', context: context);

  @override
  dynamic get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(dynamic value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$videoPlayerControllerAtom =
      Atom(name: 'VideoStoreBase.videoPlayerController', context: context);

  @override
  VideoPlayerController? get videoPlayerController {
    _$videoPlayerControllerAtom.reportRead();
    return super.videoPlayerController;
  }

  @override
  set videoPlayerController(VideoPlayerController? value) {
    _$videoPlayerControllerAtom.reportWrite(value, super.videoPlayerController,
        () {
      super.videoPlayerController = value;
    });
  }

  late final _$chewieControllerAtom =
      Atom(name: 'VideoStoreBase.chewieController', context: context);

  @override
  ChewieController? get chewieController {
    _$chewieControllerAtom.reportRead();
    return super.chewieController;
  }

  @override
  set chewieController(ChewieController? value) {
    _$chewieControllerAtom.reportWrite(value, super.chewieController, () {
      super.chewieController = value;
    });
  }

  late final _$playVideoAsyncAction =
      AsyncAction('VideoStoreBase.playVideo', context: context);

  @override
  Future<void> playVideo() {
    return _$playVideoAsyncAction.run(() => super.playVideo());
  }

  late final _$VideoStoreBaseActionController =
      ActionController(name: 'VideoStoreBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(dynamic value) {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUrl(String value) {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.setUrl');
    try {
      return super.setUrl(value);
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVideoPlayerController(VideoPlayerController value) {
    final _$actionInfo = _$VideoStoreBaseActionController.startAction(
        name: 'VideoStoreBase.setVideoPlayerController');
    try {
      return super.setVideoPlayerController(value);
    } finally {
      _$VideoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
url: ${url},
errorMessage: ${errorMessage},
videoPlayerController: ${videoPlayerController},
chewieController: ${chewieController}
    ''';
  }
}
