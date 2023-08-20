import 'package:flutter/material.dart';

const mainColor = Color(0xFF193DAB);

class AppColorPalette {
  final MaterialColor primarySwatch;
  final MaterialColor secondarySwatch;
  final MaterialColor greySwatch;
  final MaterialColor orangeSwatch;
  final MaterialColor greenSwatch;
  final MaterialColor redSwatch;
  final MaterialColor backGround;
  final MaterialColor whiteColorPrimary;
  final Color transparentColor;

  const AppColorPalette({
    required this.primarySwatch,
    required this.secondarySwatch,
    required this.greySwatch,
    required this.orangeSwatch,
    required this.redSwatch,
    required this.greenSwatch,
    required this.backGround,
    required this.whiteColorPrimary,
    required this.transparentColor,
  });
}

const AppColorPalette lightColorPalette = AppColorPalette(
  primarySwatch: MaterialColor(800, {
    900: Color(0xFF095ED3),
    800: Color(0xFF046EFF),
    700: Color(0xFF44BAF1),
  }),
  secondarySwatch: MaterialColor(600, {
    900: Color(0xFF1D5175),
    800: Color(0xFFCFE3FF),
    700: Color(0xFFE4EAEF),
  }),
  greySwatch: MaterialColor(800, {
    900: Color(0xFF102C43),
    800: Color(0xFF17334A),
    700: Color(0xFF3A5165),
    600: Color(0xFF6C869C),
    500: Color(0xFFA2B4C2),
    400: Color(0xFFDBE1E8),
    300: Color(0xFFECF1F4),
    200: Color(0xFFEFF1F6),
  }),
  greenSwatch: MaterialColor(800, {
    900: Color(0xFF006C57),
    800: Color(0xFFDAF7F4),
    700: Color(0xFF03CBAD),
  }),
  orangeSwatch: MaterialColor(800, {
    900: Color(0xFFA54500),
    800: Color(0xFFFEA907),
    700: Color(0xFFFFF0E1),
  }),
  redSwatch: MaterialColor(900, {
    900: Color(0xFFBA0E44),
    800: Color(0xFFCA3962),
    700: Color(0xFFF14475),
    600: Color(0xFFFFE0EA),
  }),
  whiteColorPrimary: MaterialColor(900, {
    900: Color(0xFFFFFFFF),
  }),
  backGround: MaterialColor(900, {
    900: Color(0xFFF8FAFC),
    800: Color(0xFFE5E5E5),
  }),
  transparentColor: Colors.transparent,
);
const TextTheme lightTextTheme = TextTheme(
  ///Mobile/Header1
  headline1: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Header2
  headline2: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Header3
  headline3: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Header4
  headline4: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: Color(0xFF102C43),
  ),
  headline5: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Text Body
  bodyText1: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Additional
  bodyText2: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.3,
    color: Color(0xFF102C43),
  ),

  ///Mobile/Additional2
  subtitle1: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: Color(0xFF102C43),
  ),
);
