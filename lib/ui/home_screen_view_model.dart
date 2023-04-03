import 'dart:async';

import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

class HomeScreenViewModel {
  final PhotoApiRepository repository;
  HomeScreenViewModel(this.repository);

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  Future<void> fetch(String query) async {
    final result = await repository.fetch(query);
    _photoStreamController.add(result);
  }
}
