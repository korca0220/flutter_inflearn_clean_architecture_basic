import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_state.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_ui_event.dart';

class HomeScreenViewModel with ChangeNotifier {
  final PhotoApiRepository repository;
  HomeScreenViewModel(this.repository);

  HomeState _homeState = const HomeState(isLoading: false, photos: []);
  HomeState get homeState => _homeState;

  final _streamController = StreamController<HomeUIEvent>();
  Stream<HomeUIEvent> get eventStream => _streamController.stream;

  Future<void> fetch(String query) async {
    _homeState = _homeState.copyWith(isLoading: true);
    notifyListeners();
    final result = await repository.fetch(query);

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
