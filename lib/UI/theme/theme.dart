import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/AppColor.dart';

class AppTheme {
  ThemeData lightTheme(context) => ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(),
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
        appBarTheme: AppBarTheme(
          color: AppColor.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: AppColor.black,
            fontSize: 20,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColor.black,
          ),
        ),
        hintColor: AppColor.black,
        scaffoldBackgroundColor: AppColor.background,
      );

  ThemeData darkTheme(context) => ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(),
        primarySwatch: Colors.amber,
        textTheme: GoogleFonts.actorTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
        appBarTheme: AppBarTheme(
          color: AppColor.black,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: AppColor.white,
            fontSize: 20,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColor.white,
          ),
        ),
        hintColor: AppColor.white,
        scaffoldBackgroundColor: AppColor.black,
      );
}
