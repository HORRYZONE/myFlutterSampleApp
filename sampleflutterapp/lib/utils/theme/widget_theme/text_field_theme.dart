import 'package:flutter/material.dart';
import 'package:sampleflutterapp/constant/color.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: lightTextPrimary,
    floatingLabelStyle: TextStyle(color: lightPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: lightTextPrimary),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: darkActionGreen,
    floatingLabelStyle: TextStyle(color: darkActionGreen),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: darkActionGreen),
    ),
  );
}
