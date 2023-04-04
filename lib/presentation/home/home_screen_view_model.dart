import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_state.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_ui_event.dart';

class HomeScreenViewModel with ChangeNotifier {
  final GetPhotosUseCase useCase;
  HomeScreenViewModel(this.useCase);

  HomeState _homeState = const HomeState(isLoading: false, photos: []);
  HomeState get homeState => _homeState;

  final _streamController = StreamController<HomeUIEvent>();
  Stream<HomeUIEvent> get eventStream => _streamController.stream;

  Future<void> fetch(String query) async {
    _homeState = _homeState.copyWith(isLoading: true);
    notifyListeners();

    final result = await useCase(query);

    result.when(
      success: (data) {
        _homeState = _homeState.copyWith(photos: data);
      },
      error: (message) {
        _streamController.add(HomeUIEvent.showSnackBar(message));
      },
    );
    _homeState = _homeState.copyWith(isLoading: false);
    notifyListeners();
  }
}
