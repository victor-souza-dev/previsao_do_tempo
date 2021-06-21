import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/screens/home/home.dart';
import 'package:previsao_do_tempo/style.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: grayTheme,
        textTheme: TextTheme(
          headline1: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 140,
              fontWeight: FontWeight.w600,
            ),
          ),
          headline6: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          subtitle1: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle2: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          bodyText1: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          bodyText2: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          caption: GoogleFonts.dosis(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
    ),
  );
}
