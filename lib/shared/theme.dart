import 'package:flutter/material.dart';

import '../shared/colors.dart';
import './styles.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Nunito",
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(28),
//     borderSide: BorderSide(color: kTextColor),
//     gapPadding: 10,
//   );
//   return InputDecorationTheme(
//     contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//     enabledBorder: outlineInputBorder,
//     focusedBorder: outlineInputBorder,
//     errorBorder: outlineInputBorder,
//     border: outlineInputBorder,
//   );
// }

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    elevation: 0,
    // brightness: Brightness.light,
    // iconTheme: IconThemeData(
    //   color: AppColors.black,
    // ),
    // toolbarTextStyle: TextStyle(color: AppColors.black, fontSize: 18),
    // titleTextStyle: TextStyle(color: AppColors.black),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(
      color: AppColors.black,
      fontFamily: 'Nunito',
    ),
    bodyText2: TextStyle(
      color: AppColors.black,
      fontFamily: 'Nunito',
    ),
  );
}
