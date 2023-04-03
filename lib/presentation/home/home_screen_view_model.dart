import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/presentation/home/home_ui_event.dart';

class HomeScreenViewModel with ChangeNotifier {
  final PhotoApiRepository repository;
  HomeScreenViewModel(this.repository);

  List<Photo> _photos = [];
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  final _streamController = StreamController<HomeUIEvent>();
  Stream<HomeUIEvent> get eventStream => _streamController.stream;

  Future<void> fetch(String query) async {
    final result = await repository.fetch(query);
    result.when(
      success: (data) {
        _photos = data;
      },
      error: (message) {
        _streamController.add(HomeUIEvent.showSnackBar(message));
      },
    );
    notifyListeners();
  }
}
