import 'package:bloc_example/ui/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Counter', 
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: const HomePage(),
    );
  }
}