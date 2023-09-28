import 'package:bloc_example/bloc/counter/counter_bloc.dart';
import 'package:bloc_example/bloc/counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true, 
       title: const Text('Bloc Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                "$state",
                style: const TextStyle(
                  fontSize: 50, 
                  fontWeight: FontWeight.bold,
                ),
                );
              },
               
            ),
             const SizedBox(height: 5),
             const Text('Click the + - to see magic')  
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvents());
            },
            child: const Icon(Icons.remove),
            ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvents());
            },
            child: const Icon(Icons.add),
            )
        ],
      ),
    );
  }
}