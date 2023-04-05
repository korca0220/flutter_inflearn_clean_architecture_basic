
import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/result.dart';
import 'package:flutter_inflearn_clean_architecture_basic/domain/models/photo_model.dart';

abstract class PhotoApiRepository {
  Future<Result<List<Photo>>> fetch(String query);
}
