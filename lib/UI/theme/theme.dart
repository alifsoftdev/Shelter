import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/AppColor.dart';

class AppTheme {
  ThemeData lightTheme(context) => ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
                decorationColor: Colors.black,
              ),
        ),
        appBarTheme: AppBarTheme(
            color: AppColor.white,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: AppColor.black)),
        hintColor: AppColor.black,
        scaffoldBackgroundColor: AppColor.background,
      );

  ThemeData darkTheme(context) => ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.actorTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
                decorationColor: Colors.white,
              ),
        ),
        appBarTheme: AppBarTheme(
            color: AppColor.black,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: AppColor.white)),
        hintColor: AppColor.black,
        scaffoldBackgroundColor: AppColor.black,
      );
}
