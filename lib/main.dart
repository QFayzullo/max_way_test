import 'package:flutter/material.dart';
import 'package:max_way/orderfoods/foodsordered.dart';
import 'package:max_way/screens/main_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}