import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_mode/constant/colors.dart';

/// light theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    headlineMedium: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      textBaseline: TextBaseline.ideographic,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFFFA557D),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColor.sColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.sColor,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      textStyle: GoogleFonts.aBeeZee(
        color: AppColor.dColor,
      ),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(AppColor.dColor),
    trackColor: MaterialStateProperty.all(AppColor.deepGrey),
  ),
);

/// dark theme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF102033),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF102033),
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      color: AppColor.deepGrey,
    ),
    headlineMedium: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      textBaseline: TextBaseline.ideographic,
      color: AppColor.dColor,
    ),
    headlineSmall: GoogleFonts.aBeeZee(
      fontWeight: FontWeight.bold,
      textBaseline: TextBaseline.ideographic,
      color: AppColor.dColor,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.dColor,
      foregroundColor: AppColor.black,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      textStyle: GoogleFonts.aBeeZee(
        color: AppColor.black,
      ),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(AppColor.pColor),
    trackColor: MaterialStateProperty.all(AppColor.pColor.shade200),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColor.dColor,
    foregroundColor: AppColor.black,
  ),
);
