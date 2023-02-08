import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/data.dart';


class User {
  String url =
      'https://pixabay.com/api/?key=32649344-920022f6bec4736666c566757&q=yellow+flowers&image_type=photo&pretty=true';
  Future getData() async {
    try {
      final respons = await http.get(Uri.parse(url));
      final jsonObject = jsonDecode(respons.body);
      Welcome welcome = Welcome.fromJson(jsonObject);
      return welcome;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
