import 'dart:async';

import 'package:boilerplate_flutter/common/http/ApiProvider.dart';
import 'package:meta/meta.dart';

class HomeApiProvider {
  HomeApiProvider({@required this.baseUrl, @required this.apiProvider})
      : assert(apiProvider != null);

  final ApiProvider apiProvider;

  final String baseUrl;

  Future<Map<String, dynamic>> fetchBooks() {
    return apiProvider.get('$baseUrl/books');
  }
}