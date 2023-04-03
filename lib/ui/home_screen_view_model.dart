import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

class HomeScreenViewModel with ChangeNotifier {
  final PhotoApiRepository repository;
  HomeScreenViewModel(this.repository);

  List<Photo> _photos = [];
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  Future<void> fetch(String query) async {
    final result = await repository.fetch(query);
    _photos = result;
    notifyListeners();
  }
}
