import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets/presentation/screens/cards/cards_screen.dart';
import 'package:widgets/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      home: HomeScreen(),
      routes: {
        "/button": (context) => const ButtonsScreen(),
        "/card": (context) => const CardsScreen(),
      },
    );
  }
}
