import 'dart:convert';

import 'package:flutter_inflearn_clean_architecture_basic/data/data_source/result.dart';
import 'package:http/http.dart' as http;

class PixaBayAPi {
  final http.Client client;

  PixaBayAPi(this.client);
  static const baseUrl = "https://pixabay.com/api/";
  static const key = "35017077-95d0aae89ecfa8fc1123ed7f7";

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client
          .get(Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo"));

      final result = jsonDecode(response.body);
      Iterable hits = result['hits'];
      return Result.success(hits);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
