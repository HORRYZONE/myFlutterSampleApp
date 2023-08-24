import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/sizes.dart';

/* --Light & Dark Elevated Button Themes */
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  // -- Light Theme --
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: lightPrimaryColor,
      backgroundColor: darkPrimaryColor,
      side: const BorderSide(color: darkPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  // -- Dark Theme --
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: darkPrimaryColor,
      backgroundColor: lightPrimaryColor,
      side: const BorderSide(color: lightPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
  
}
