import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        headline1:
            GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 72.0),
        headline6: GoogleFonts.openSans(fontSize: 36.0),
        bodyText2: GoogleFonts.openSans(fontSize: 14.0),
      ),
      // brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: AppColor.lightBlueColor,
      backgroundColor: AppColor.whiteColor,
      splashColor: AppColor.lightBlueColor,
      scaffoldBackgroundColor: AppColor.whiteColor,
      appBarTheme: const AppBarTheme(
          elevation: 0.0, backgroundColor: AppColor.lightBlueColor));
}
