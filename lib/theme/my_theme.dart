import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xff5D9CEC);
  static const Color lightGrey = Color(0xffC8C9CB);
  static const Color lightBackgroundColor = Color(0xffDFECDB);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBackgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedIconTheme: IconThemeData(color: lightPrimary, size: 36),
      unselectedIconTheme: IconThemeData(color: lightGrey, size: 36),
      selectedItemColor: lightPrimary,
      unselectedItemColor: lightGrey,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18))),
    ),
    textTheme: TextTheme(

        headline6: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
        headline5: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
  );
}
