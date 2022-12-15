import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  static final HttpService instance = HttpService.internal();

  HttpService.internal();
  factoryHttpService() {
    return instance;
  }


  Future<http.Response> postRequestWithAccessToken(
      { required String endPoint,
        required Map<String, String> header,
        required Map<dynamic, dynamic> data}) {
    var url = Uri.parse(endPoint);
    return http.post(url,
        headers: header,
        body: jsonEncode(data),
        encoding: Encoding.getByName("utf-8"));
  }
  Future<http.Response> postRequestWithHeader(
      { required String endPoint,
        required Map<String, String> header,
        required List<dynamic> data}) {
    var url = Uri.parse(endPoint);
    return http.post(url,
        headers: header,
        body: jsonEncode(data),
        encoding: Encoding.getByName("utf-8"));
  }

  // String _authToken;
  // Map<String, String> _getRequestHeaders() {
  //   return {'Authorization': 'Bearer $_authToken'};
  // }

  Future<http.Response> getRequest(String endPoint) {
    String url = endPoint;
    print("_get request : $url");
    return http.get(Uri.parse(url));
  }


  Future<http.Response> postRequestWithToken(
      {required String endPoint,
        required Map<String, String> header,
        required Map<dynamic, dynamic> data}) {
    String url = endPoint;
    return http.post(Uri.parse(url),
        headers: header,
        body: jsonEncode(data),
        encoding: Encoding.getByName("utf-8"));
  }



  Future<http.Response> postRequest(
      {required String endPoint, required Map<dynamic, dynamic> data}) {
    String url = endPoint;
    return http.post(Uri.parse(url), body: data, encoding: Encoding.getByName("utf-8"));
  }

  Future<http.Response> getRequestWithAccessToken(
      {required String endPoint, required Map<String, String> header}) {
    String url = endPoint;
    print("_get request : $url");
    return http.get(Uri.parse(url), headers: header);
  }


}