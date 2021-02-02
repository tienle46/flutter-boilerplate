import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boilerplate_flutter/app/app.dart';
import 'package:boilerplate_flutter/common/bloc/SimpleBlocDelegate.dart';
import 'package:boilerplate_flutter/common/constant/Env.dart';

void main() {
  Bloc.observer = SimpleBlocDelegate();
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() {
    runApp(App(env: EnvValue.prepro));
  }, (error, stackTrace) async {});
}