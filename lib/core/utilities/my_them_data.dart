import 'package:flutter/material.dart';
import 'package:news_app/core/utilities/my_app_style.dart';

class MyThemeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xffE4E4E4),
          elevation: 0,
        ),
        textTheme: TextTheme(
          labelMedium: MyAppStyle(context: context).stylesReqular12,
          bodyLarge: MyAppStyle(context: context).stylesBold20,
          bodyMedium: MyAppStyle(context: context).stylesBold16,
          bodySmall: MyAppStyle(context: context).stylesBold12,
          titleLarge: MyAppStyle(context: context).stylesBold18,
          titleMedium: MyAppStyle(context: context).stylesReqular16.copyWith(
            color: Colors.lightBlueAccent,
          ),
          titleSmall: MyAppStyle(context: context).stylesReqular10,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(color: Color(0xff373737)),
        textTheme: TextTheme(
          labelMedium: MyAppStyle(context: context).stylesReqular12,
          bodyLarge: MyAppStyle(context: context)
              .stylesBold20
              .copyWith(color: Colors.white),
          bodyMedium: MyAppStyle(context: context).stylesBold16.copyWith(
                color: Colors.white.withOpacity(0.6),
              ),
          bodySmall: MyAppStyle(context: context)
              .stylesBold12
              .copyWith(color: Colors.white),
          titleLarge: MyAppStyle(context: context)
              .stylesBold18
              .copyWith(color: Colors.white),
          titleMedium: MyAppStyle(context: context).stylesReqular16,
          titleSmall: MyAppStyle(context: context)
              .stylesReqular10
              .copyWith(color: Colors.white),
        ),
      );
}
