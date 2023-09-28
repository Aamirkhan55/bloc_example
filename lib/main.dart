import 'package:bloc_example/bloc/counter/counter_bloc.dart';
import 'package:bloc_example/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Counter', 
        theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
        ),
        home: const HomePage(),
      ),
    );
  }
}