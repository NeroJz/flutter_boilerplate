import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class Constants {
  // COLORS
  static const Color primary = const Color(0xFFDA281C);
  static const Color secondary = const Color(0xFFFF671E);
  static const Color body = const Color(0xFFFDFCF0);
  static const Color grey = const Color(0xFF666666);
  static const Color light_grey = const Color(0xFFCCCCCC);
  static const Color black = const Color(0xFF000000);
  static const Color green = const Color(0xFF8FBC8F);
  static const Color orange = const Color(0xFFF5A623);
  static const Color red = const Color(0xFFCD5C5C);
  static const Color white = const Color(0xFFFFFFFF);


  // TEXT STYLE
  static const TextStyle movie_title = TextStyle(
    color: black,
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle movie_date = TextStyle(
    color: primary,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );

}