import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:meta/meta.dart';

import 'SignUpEvent.dart';
import 'SignUpState.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository authRepository;
  final AuthenticationBloc authenticationBloc;

  SignUpBloc({
    @required this.authRepository,
    @required this.authenticationBloc,
  })  : assert(authRepository != null),
        assert(authenticationBloc != null),
        super(SignUpInitial());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is SignUpButtonPressed) {
      yield SignUpLoading();

      try {
        final response = await authRepository.signUp(
            event.email, event.username, event.password);
        if (!response['error']) {
          yield SignUpSuccess();
          //authenticationBloc.add(LoggedIn(token: response["token"]));
        } else {
          yield SignUpInitial();
        }
      } catch (error) {
        yield SignUpFailure(error: error.toString());
      }
    }
  }
}