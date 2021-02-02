import 'package:boilerplate_flutter/feature/authentication/bloc/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/bloc/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:boilerplate_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SignUpForm.dart';

class SignUpPage extends StatelessWidget {
  final AuthRepository authRepository;

  SignUpPage({Key key, @required this.authRepository})
      : assert(authRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).signIn),
      ),
      body: BlocProvider(
        create: (context) {
          return SignInBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            authRepository: authRepository,
          );
        },
        child: SignUpForm(),
      ),
    );
  }
}
