import 'dart:convert';

import 'package:flutter_inflearn_clean_architecture_basic/data/photo_api_repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_inflearn_clean_architecture_basic/models/photo_model.dart';

class PixabayApi implements PhotoApiRepository {
  final baseUrl = "https://pixabay.com/api/";
  final key = "35017077-95d0aae89ecfa8fc1123ed7f7";

  @override
  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    client ??= http.Client();
    var res = await client
        .get(Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo"));

    final result = jsonDecode(res.body);
    Iterable hits = result['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
