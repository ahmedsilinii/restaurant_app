import 'package:flutter/material.dart';
import 'package:restaurant_app/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
