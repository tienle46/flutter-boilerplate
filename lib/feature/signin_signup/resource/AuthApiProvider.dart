import 'dart:async';
import 'dart:convert';

import 'package:boilerplate_flutter/common/http/ApiProvider.dart';
import 'package:meta/meta.dart';

class AuthApiProvider {
  AuthApiProvider({@required this.baseUrl, @required this.apiProvider})
      : assert(apiProvider != null);

  final String baseUrl;

  ApiProvider apiProvider;

  Future<Map<String, dynamic>> signIn(String username, String password) async {
    try {
      final String data = json.encode({'username': username, 'password': password});
      return await apiProvider.post('$baseUrl/card/app/login/customer', data);
    } on Error catch (e) {
      throw Exception('Failed to load post ' + e.toString());
    }
  }

  Future<Map<String, dynamic>> signUp(
      String email, String password, String name) async {
    try {
      final String data =
          json.encode({'name': name, 'email': email, 'password': password});
      return await apiProvider.post('$baseUrl/register', data);
    } on Error catch (e) {
      throw Exception('Failed to load post ' + e.toString());
    }
  }
}