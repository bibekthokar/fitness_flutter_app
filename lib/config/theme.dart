import 'package:fitness_mobile/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Palette.lightPurpleColor,
    scaffoldBackgroundColor: Palette.darkColor,
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope()
          .copyWith(fontSize: 24, height: 3.4, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.manrope(
          fontSize: 20, height: 2.4, fontWeight: FontWeight.w500),
      headline3: GoogleFonts.manrope(
          fontSize: 18, height: 2.7, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.manrope(
          fontSize: 16, height: 2.4, fontWeight: FontWeight.w600),
      headline5: GoogleFonts.manrope(
          fontSize: 16, height: 2.4, fontWeight: FontWeight.w500),
      headline6: GoogleFonts.manrope(
          fontSize: 16, height: 2.4, fontWeight: FontWeight.normal),
      bodyText1: GoogleFonts.manrope(
          fontSize: 14, height: 2.0, fontWeight: FontWeight.normal),
      bodyText2: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.w600),
      caption: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.normal),
      subtitle1: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.w600),
      subtitle2: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.normal),
      button: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    colorScheme: ColorScheme.dark().copyWith(primary: Palette.lightPurpleColor),
  );
}

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Palette.lightPurpleColor,
    scaffoldBackgroundColor: Palette.darkColor,
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope()
          .copyWith(fontSize: 24, height: 2.8, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.manrope(
          fontSize: 20, height: 2.4, fontWeight: FontWeight.w500),
      headline3: GoogleFonts.manrope(
          fontSize: 18, height: 2.7, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.manrope(
          fontSize: 16, height: 2.4, fontWeight: FontWeight.w600),
      headline5: GoogleFonts.manrope(
          fontSize: 16, height: 2.4, fontWeight: FontWeight.w500),
      headline6: GoogleFonts.manrope(
          fontSize: 16, height: 1.8, fontWeight: FontWeight.normal),
      bodyText1: GoogleFonts.manrope(
          fontSize: 14, height: 2.0, fontWeight: FontWeight.normal),
      bodyText2: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.w600),
      caption: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.normal),
      subtitle1: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.w600),
      subtitle2: GoogleFonts.manrope(
          fontSize: 11, height: 1.4, fontWeight: FontWeight.normal),
      button: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    colorScheme: ColorScheme.dark().copyWith(primary: Palette.lightPurpleColor),
  );
}
