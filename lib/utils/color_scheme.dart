import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;
  static ColorSchemeLight? get instance {
    _instace ??= ColorSchemeLight._init();
    return _instace;
  }

  ColorSchemeLight._init();

  final Color lightBlue = const Color(0xff91A9EF);
  final Color blue = const Color(0xff3A7CF6);
  final Color normalBlue = const Color(0xff38519C);
  final Color mediumBlue = const Color(0xff1C3683);
  final Color darkBlue = const Color(0xff071B52);
  final Color darkWhite = const Color.fromARGB(255, 214, 214, 239);
  final Color white = Colors.white;
  final Color pink = const Color(0xffD839F6);
  final Color darkPink = const Color(0xff86199A);
}
