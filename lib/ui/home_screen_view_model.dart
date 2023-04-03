import 'dart:async';

import 'package:flutter_inflearn_clean_architecture_basic/data/api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

class HomeScreenViewModel {
  final PixabayApi api;
  HomeScreenViewModel(this.api);

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }
}
