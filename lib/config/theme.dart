import 'package:fitness_mobile/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Palette.lightPurpleColor,
    scaffoldBackgroundColor: Palette.darkColor,
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope()
          .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.manrope(fontSize: 20, fontWeight: FontWeight.w500),
      headline3: GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
      headline5: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w500),
      headline6:
          GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.normal),
      bodyText1:
          GoogleFonts.manrope(fontSize: 14, fontWeight: FontWeight.normal),
      bodyText2: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.w600),
      caption: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.normal),
      subtitle1: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.w600),
      subtitle2:
          GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.normal),
      button: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    colorScheme: ColorScheme.dark().copyWith(primary: Palette.lightPurpleColor),
  );
}

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Palette.lightPurpleColor,
    scaffoldBackgroundColor: Palette.blackColor,
    appBarTheme: AppBarTheme(color: Palette.blackColor),
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope()
          .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
      headline2: GoogleFonts.manrope(fontSize: 20, fontWeight: FontWeight.w500),
      headline3: GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
      headline5: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w500),
      headline6:
          GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.normal),
      bodyText1:
          GoogleFonts.manrope(fontSize: 14, fontWeight: FontWeight.normal),
      bodyText2: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.w600),
      caption: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.normal),
      subtitle1: GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.w600),
      subtitle2:
          GoogleFonts.manrope(fontSize: 11, fontWeight: FontWeight.normal),
      button: GoogleFonts.manrope(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    colorScheme: ColorScheme.dark().copyWith(primary: Palette.lightPurpleColor),
  );
}
