import 'package:flutter/material.dart';
import 'package:stockify/screens/details_screen.dart';
import 'package:stockify/screens/home_screen.dart';
import 'package:stockify/screens/predictions.dart';
import 'package:stockify/screens/scaffold_screen.dart';
import 'package:stockify/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Initial screen to show
      routes: {
        '/home': (context) => HomeScreen(),
        '/scaffold': (context) =>
            ScaffoldScreen(), // Named route for ScaffoldScreen
        '/predictions': (context) => PredictionsScreen(),
        '/details': (context) => DetailsScreen(),
      },
    );
  }
}
