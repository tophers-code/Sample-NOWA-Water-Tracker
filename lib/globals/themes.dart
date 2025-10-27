import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xff59a3ff),
    secondary: Color(0xff1b3854),
    tertiary: Color(0xfff5c26f),
    surface: Color(0xffe4f2fe),
    onSecondary: Color(0xffffffff),
    onSurface: Color(0xff1b3854),
    shadow: Color(0xb3000000),
    onTertiary: Color(0xff0a1a27),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      shadows: [const Shadow(offset: Offset(0.0, 1.0), blurRadius: 4.0)],
      color: const Color(0xffffffff),
    ),
    displaySmall: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xffffffff),
    ),
    labelLarge: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800),
    labelMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w700,
      color: const Color(0x801b3854),
    ),
    titleMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w600),
  ),
  fontFamily: 'Figtree',
);

@NowaGenerated()
final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Color(0xff623a8e),
      surface: Color(0xffb33d3d),
      onSurface: Color(0xffffffff),
    ),
    textTheme: const TextTheme());
