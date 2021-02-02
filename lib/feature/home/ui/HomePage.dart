import 'package:boilerplate_flutter/common/widget/TouchableOpacity.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/AuthenticationBloc.dart';
import 'package:boilerplate_flutter/feature/authentication/bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void _onLogoutPressed() {
      BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _onLogoutPressed,
          child: Text('Log out'),
        ),
      ),
    );
  }
}
