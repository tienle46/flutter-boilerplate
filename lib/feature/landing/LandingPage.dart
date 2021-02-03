import 'package:boilerplate_flutter/common/constant/Env.dart';
import 'package:boilerplate_flutter/common/http/ApiProvider.dart';
import 'package:boilerplate_flutter/common/utils/InternetCheck.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationBloc.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationState.dart';
import 'package:boilerplate_flutter/feature/home/ui/HomePage.dart';
import 'package:boilerplate_flutter/feature/landing/SplashPage.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/ui/SignInPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            return HomePage();
          }
          if (state is AuthenticationUnauthenticated) {
            return SignInPage(
              authRepository: AuthRepository(
                env: RepositoryProvider.of<Env>(context),
                apiProvider: RepositoryProvider.of<ApiProvider>(context),
                internetCheck: RepositoryProvider.of<InternetCheck>(context),
              ),
            );
          }

          return SplashPage();
        });
  }
}
