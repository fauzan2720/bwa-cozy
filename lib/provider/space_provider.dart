import 'dart:convert';

import 'package:cozy/model/space_model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class SpaceProvider extends ChangeNotifier {
  Future<List<SpaceModel>> getRecommendedSpace() async {
    var response = await http.get(
      Uri.parse("https://bwa-cozy-api.vercel.app/recommended-spaces"),
      headers: {
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      List obj = jsonDecode(response.body);
      List<SpaceModel> spaces = obj.map((e) => SpaceModel.fromJson(e)).toList();
      return spaces;
    } else {
      return <SpaceModel>[];
    }
  }
}
