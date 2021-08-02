import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Data {
  static final Data _singleton = Data._internal();

  factory Data() {
    return _singleton;
  }

  Data._internal();

  static Future getJson() async {
    return json.decode(await rootBundle.loadString('assets/data/data.json')) as Map;
  }
}