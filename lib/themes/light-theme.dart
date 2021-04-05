import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nmpdemo/helpers/constants.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(brightness: Brightness.light),
    scaffoldBackgroundColor: Constants.backgroundColor,
    backgroundColor: Constants.backgroundColor,
    textTheme: GoogleFonts.oxygenTextTheme(
      Theme.of(context).textTheme,
    ));
