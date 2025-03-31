import 'package:flutter/material.dart';
import 'package:imc_calculator_app/core/app_colors.dart';
import 'package:imc_calculator_app/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Text("Imc Calculator"),
          foregroundColor: Colors.white,
        ),
        body: ImcHomeScreen()
      ),
    );
  }
}
