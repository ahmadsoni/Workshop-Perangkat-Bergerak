import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/minggu5_model.dart';

class Minggu5Controller extends GetxController {}

class ApiService {
  static final String_baseUrl = 'https://newsap.org/v2/';
  static final String_apiKey = 'e25f8539a49d4dafa3739ba33e189abb';
  static final String_category = 'business';
  static final String_country = 'id';

  Future<UserModel> topHeadLines() async {
    final res = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=e25f8539a49d4dafa3739ba33e189abb"));

    if (res.statusCode == 200) {
      return UserModel.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
