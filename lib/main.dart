import 'package:flutter/material.dart';
import 'package:app_3/feature/splash/splash_screen.dart';

void main() {
  runApp(const App3());
}

class App3 extends StatelessWidget {
  const App3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}