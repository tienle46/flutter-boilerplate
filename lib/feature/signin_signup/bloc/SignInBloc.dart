import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:boilerplate_flutter/common/http/Response.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationBloc.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationEvent.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/AuthRepository.dart';
import 'package:meta/meta.dart';
import 'index.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository authRepository;
  final AuthenticationBloc authenticationBloc;

  SignInBloc({
    @required this.authRepository,
    @required this.authenticationBloc,
  })  : assert(authRepository != null),
        assert(authenticationBloc != null),
        super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is SignInButtonPressed) {
      yield SignInLoading();

      try {
        final response =
            await authRepository.signIn(event.username, event.password);
        if (response.status == Status.ConnectivityError) {
          //Internet problem
          yield const SignInFailure(error: "");
        }
        if (response.status == Status.Success) {
          authenticationBloc
              .add(LoggedIn(token: response.data.getAccessToken()));
          yield SignInSuccess();
        } else {
          yield SignInFailure(error: response.message);
        }
      } catch (error) {
        yield SignInFailure(error: error.toString());
      }
    }
  }
}
