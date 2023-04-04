import 'dart:math';

import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/result.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/repository/photo_api_repository.dart';

class GetPhotosUseCase {
  final PhotoApiRepository repository;
  GetPhotosUseCase(this.repository);

  Future<Result<List<Photo>>> call(String query) async {
    final result = await repository.fetch(query);

    return result.when(
      success: (data) {
        return Result.success(data.sublist(0, min(3, data.length)));
      },
      error: (message) => Result.error(message),
    );
  }
}
