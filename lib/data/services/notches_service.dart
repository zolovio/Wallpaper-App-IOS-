import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/data/api_constant.dart';
import 'package:wallpaper_app/data/http_service.dart';
import 'package:wallpaper_app/data/models/color_model.dart';
import 'package:wallpaper_app/data/models/notches_model.dart';
import 'package:wallpaper_app/data/models/wallpaper_model.dart';

class NotchesService {
  HttpService httpService = HttpService.internal();

  Future<NotchesModel> getNotchesList() async {



    NotchesModel model=NotchesModel();
    final http.Response response = await httpService.getRequest(
      APIConstants.epNotches);
    print(response.body);
    log("AgoraTokenService: reponse code of physician list is  ${response.statusCode.toString()}");
    log("AgoraTokenService: reponse code of physician list is  ${response.statusCode.toString()}");
    if (response.statusCode==200) {
      var json = jsonDecode(response.body);
      model = NotchesModel.fromJson(json);
      log("api message is ${model.message}");
    } else if (response.statusCode == 401) {
      print("status cde:${response.statusCode}");
      var json = jsonDecode(response.body);
      model = NotchesModel.fromJson(json);
    } else if (response.statusCode == 400) {
      print("status cde:${response.statusCode}");
      var json = jsonDecode(response.body);
      model = NotchesModel.fromJson(json);
    } else {
      throw Exception("colorauthservice: Failed to get colors List");
    }
    return model;
  }


}