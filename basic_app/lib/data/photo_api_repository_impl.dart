import 'dart:convert';

import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/pixabay_api.dart';
import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/result.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  final PixaBayAPi api;

  PhotoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    final result = await api.fetch(query);
    return result.when(
      success: (data) {
        return Result.success(data.map((e) => Photo.fromJson(e)).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
