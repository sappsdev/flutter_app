import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _colorApp = Color(0xff6750a4);
const colorList = <Color>[
  _colorApp,
  Colors.indigo,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;
  AppTheme({
    this.selectedColor = 2,
    this.isDarkmode = false,
  });
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        fontFamily: GoogleFonts.poppins().fontFamily,
      );

  AppTheme copyWith({int? selectedColor, bool? isDarkmode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkmode: isDarkmode ?? this.isDarkmode,
      );
}
