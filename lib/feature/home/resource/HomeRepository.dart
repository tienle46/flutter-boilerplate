import 'package:boilerplate_flutter/common/constant/Env.dart';
import 'package:boilerplate_flutter/common/http/ApiProvider.dart';
import 'package:boilerplate_flutter/common/utils/InternetCheck.dart';
import 'package:meta/meta.dart';

import 'HomeApiProvider.dart';


class HomeRepository {
  ApiProvider apiProvider;
  HomeApiProvider homeApiProvider;
  InternetCheck internetCheck;
  Env env;

  HomeRepository(
      {@required this.env,
      @required this.apiProvider,
      @required this.internetCheck}) {
    homeApiProvider =
        HomeApiProvider(baseUrl: env.baseUrl, apiProvider: apiProvider);
  }
}