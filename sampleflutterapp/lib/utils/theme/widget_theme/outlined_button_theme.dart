import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/sizes.dart';

/* --Light & Dark Elevated Button Themes */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  // -- Light Theme --
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: darkPrimaryColor,
      side: BorderSide(color: darkPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  // -- Dark Theme --
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: lightPrimaryColor,
      side: BorderSide(color: lightPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
