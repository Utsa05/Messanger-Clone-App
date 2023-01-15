// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:messanger_clone_app/presentation/cores/color.dart';
import 'package:messanger_clone_app/presentation/cores/string.dart';

class MessangerApp extends StatelessWidget {
  const MessangerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(
          primaryColor: AppColor.white,
          appBarTheme: const AppBarTheme(backgroundColor: AppColor.black),
          scaffoldBackgroundColor: AppColor.black,
          iconTheme: const IconThemeData(color: AppColor.white),
          textTheme: TextTheme(
              headline1:
                  GoogleFonts.openSans(color: AppColor.white, fontSize: 38.0),
              headline6:
                  GoogleFonts.openSans(color: AppColor.white, fontSize: 32.0),
              bodyText2:
                  GoogleFonts.openSans(color: AppColor.white, fontSize: 14.0))),
    );
  }
}
