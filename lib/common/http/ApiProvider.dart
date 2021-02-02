import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'CustomException.dart';

class ApiProvider {

  Future<Map<String, dynamic>> post(String url, dynamic body, {dynamic headers = const {
    'content-type': 'application/json'
  }}) async {
    dynamic responseJson;
    try {
      final dynamic response =
          await http.post(Uri.encodeFull(url), body: body, headers: headers);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> get(String url, {dynamic headers = const {
    'content-type': 'application/json'
  }}) async {
    dynamic responseJson;
    try {
      final dynamic response = await http.get(Uri.encodeFull(url), headers: headers);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final dynamic responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw Exception(response.body.toString());
    }
  }
}