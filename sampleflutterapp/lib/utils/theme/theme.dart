import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/color.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.inter(
          color: lightTextPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 32,
        ),
        titleMedium: GoogleFonts.inter(
          color: lightTextPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        titleSmall: GoogleFonts.inter(
          color: lightTextPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        labelLarge: GoogleFonts.inter(
          color: lightTextSecondary,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        labelMedium: GoogleFonts.inter(
          color: lightTextSecondary,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.white70,
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.white60,
        fontSize: 24,
      ),
    ),
  );
}
