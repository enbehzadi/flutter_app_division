// ignore_for_file: prefer_function_declarations_over_variables

import 'package:division/division.dart';
import 'package:flutter/material.dart';

class style_division {

  final inputFieldStyle = (bool isActive, TxtStyle activeStyle) => TxtStyle()
    ..textColor(Colors.black)
    ..textAlign.left()
    ..fontSize(16)
    ..padding(horizontal: 15, vertical: 15)
    ..margin(horizontal: 50, vertical: 10)
    ..borderRadius(all: 10)
    ..alignment.center()
    ..background.color(Colors.grey[200]!)
    ..animate(300, Curves.easeOut)
    ..add(isActive ? activeStyle : null, override: true);

  final TxtStyle inputFieldActiveStyle = TxtStyle()
    ..background.color(Colors.blue)
    ..bold(true)
    ..textColor(Colors.white);

  final TxtStyle submitButtonStyle = TxtStyle()
    ..textColor(Colors.white)
    ..bold()
    ..ripple(true, splashColor: Colors.white.withOpacity(0.1))
    ..alignment.centerLeft()
    ..textAlign.center()
    ..width(150)
    ..background.color(Colors.blue)
    ..borderRadius(all: 10)
    ..margin(top: 30, horizontal: 50)
    ..padding(vertical: 15)
    ..elevation(10, opacity: 0.5);

  final titleStyle = TxtStyle()
    ..fontSize(24)
    ..bold()
    ..margin(bottom: 30, horizontal: 50)
    ..alignment.centerLeft();


}