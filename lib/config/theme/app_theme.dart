import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.orange,
  Colors.cyan,
  Colors.brown,
  Colors.deepPurpleAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'selectedColor must be greater than 0'),
      assert(
        selectedColor < colorList.length - 1,
        'selectedColor must be less than colorList.length',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
