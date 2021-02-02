import 'dart:core';

import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationBloc.dart';
import 'package:boilerplate_flutter/feature/signin_signup/bloc/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:boilerplate_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SignInForm.dart';

class SignInPage extends StatelessWidget {
  final AuthRepository authRepository;

  SignInPage({Key key, @required this.authRepository})
      : assert(authRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).sign_in),
        ),
        body: RepositoryProvider(
          create: (context) => authRepository,
          child: BlocProvider(
            create: (context) {
              return SignInBloc(
                authenticationBloc:
                    BlocProvider.of<AuthenticationBloc>(context),
                authRepository: authRepository,
              );
            },
            child: SignInForm(),
          ),
        ));
  }
}