import 'dart:convert';
import 'package:dio/dio.dart';

class NetWork {
  Dio dio = Dio();

  String baseUrl = 'https://no3man-remal.aait-sa.com/trod/api';

  Future<dynamic> getData(
      {String url, List<Map<String, dynamic>> headers}) async {
    var jsonResponse;
    dio.options.baseUrl = baseUrl;

    headers != null ? dio.options.headers = headers[0] : '';

    Response response = await dio.get('/$url').catchError((err) {});
    if (response.statusCode >= 200 && response.statusCode < 300) {
      jsonResponse = json.decode(response.toString());
      return jsonResponse;
    } else if (response == null) {
      return response;
    } else {
      return response;
    }
  }

  Future<dynamic> postData(
      {FormData formData, Map<String, dynamic> headers, String url}) async {
    dio.options.baseUrl = baseUrl;
    headers != null ? dio.options.headers = headers : '';
    var jsonResponse;
    Response response = await dio.post(url, data: formData);
    jsonResponse = json.decode(response.toString());
    if (response.statusCode >= 200 && response.statusCode < 300) {
      jsonResponse = json.decode(response.toString());
      return jsonResponse;
    } else if (response == null) {
      return response;
    } else {
      return response;
    }
  }
}
