import 'package:boilerplate_flutter/common/route/routes.dart';
import 'package:boilerplate_flutter/feature/signin_signup/bloc/index.dart';
import 'package:boilerplate_flutter/feature/signin_signup/resource/index.dart';
import 'package:boilerplate_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _onLoginButtonPressed() {
    BlocProvider.of<SignInBloc>(context).add(
      SignInButtonPressed(
        username: _usernameController.text,
        password: _passwordController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('${state.error}'),
              backgroundColor: Theme.of(context).errorColor,
            ),
          );
        }
      },
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 150),
                    Text(S.of(context).signIn,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 40)),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: S.of(context).userNameHint),
                            controller: _usernameController,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: S.of(context).passwordHint),
                            controller: _passwordController,
                            obscureText: true,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                const SizedBox(height: 30),
                                _signInButton(state),
                                const SizedBox(height: 30),
                                Text(
                                  S.of(context).newUser,
                                  textAlign: TextAlign.center,
                                ),
                                _signUpButton(),
                              ]),
                          Container(
                            child: state is SignInLoading
                                ? const CircularProgressIndicator()
                                : null,
                          ),
                        ],
                      ),
                    )
                  ]));
        },
      ),
    );
  }

  Widget _signInButton(SignInState state) {
    return SizedBox(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.white,
          onPressed: state is! SignInLoading ? _onLoginButtonPressed : null,
          child: Text(S.of(context).signIn),
        ));
  }

  Widget _signUpButton() {
    return SizedBox(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, Routes.signUp,
                arguments: RepositoryProvider.of<AuthRepository>(context));
          },
          child: Text(S.of(context).signUp),
        ));
  }
}