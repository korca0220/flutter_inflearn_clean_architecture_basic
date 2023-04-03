import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

abstract class PhotoApiRepository {
  Future<List<Photo>> fetch(String query);
}
