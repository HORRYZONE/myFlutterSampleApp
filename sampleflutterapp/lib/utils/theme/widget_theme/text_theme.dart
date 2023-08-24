import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/color.dart';


class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(

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
      );

  static TextTheme darkTextTheme = TextTheme(

        titleLarge: GoogleFonts.inter(
          color: darkTextPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 32,
        ),
        titleMedium: GoogleFonts.inter(
          color: darkTextPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        titleSmall: GoogleFonts.inter(
          color: darkTextPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        labelLarge: GoogleFonts.inter(
          color: darkTextSecondary,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        labelMedium: GoogleFonts.inter(
          color: darkTextSecondary,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      );
}
