import 'package:boilerplate_flutter/common/constant/Env.dart';
import 'package:boilerplate_flutter/common/http/ApiProvider.dart';
import 'package:boilerplate_flutter/common/http/Response.dart';
import 'package:boilerplate_flutter/common/utils/InternetCheck.dart';
import 'package:meta/meta.dart';

import 'AuthApiProvider.dart';

class AuthRepository {
  final ApiProvider apiProvider;
  AuthApiProvider authApiProvider;
  InternetCheck internetCheck;
  Env env;

  AuthRepository(
      {@required this.env,
      @required this.apiProvider,
      @required this.internetCheck}) {
    authApiProvider =
        AuthApiProvider(baseUrl: env.baseUrl, apiProvider: apiProvider);
  }

  Future<DataResponse<String>> signIn(String email, String password) async {
    final response = await authApiProvider.signIn(email, password);
    if (response == null) {
      return DataResponse.connectivityError();
    }

    if (!response['error']) {
      final String token = response["token"];
      apiProvider.setToken(token);
      return DataResponse.success(token);
    } else {
      return DataResponse.error("Error");
    }
  }

  Future<Map<String, dynamic>> signUp(
      String email, String password, String name) {
    return authApiProvider.signUp(email, password, name);
  }
}