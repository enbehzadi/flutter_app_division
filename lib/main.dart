// ignore_for_file: curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:flutter_app_division/style_division.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Test(),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool _isUsernameFieldActive = false;
  bool _isPasswordFieldActive = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Txt('Login', style: style_division().titleStyle),
        Txt(
          '',
          style: style_division().inputFieldStyle(_isUsernameFieldActive, style_division().inputFieldActiveStyle)
            ..editable(
              autoFocus: true,
              placeholder: 'enter username',
              onFocusChange: (hasFocus) {
                if (hasFocus != _isUsernameFieldActive)
                  setState(() => _isUsernameFieldActive =
                      hasFocus ?? _isUsernameFieldActive);
              },
            ),
        ),
        Txt(
          '',
          style: style_division().inputFieldStyle(_isPasswordFieldActive, style_division().inputFieldActiveStyle)
            ..editable(
              placeholder: 'enter password',
              obscureText: true,
              onFocusChange: (hasFocus) {
                if (hasFocus != _isPasswordFieldActive)
                  setState(() => _isPasswordFieldActive =
                      hasFocus ?? _isPasswordFieldActive);
              },
            ),
        ),
        Txt('Submit', style: style_division().submitButtonStyle),
      ],
    );
  }
}