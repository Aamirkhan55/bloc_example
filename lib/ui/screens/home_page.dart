import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true, 
       title: const Text('Bloc Counter'),
      ),
      body:const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                fontSize: 50, 
                fontWeight: FontWeight.bold,
              ),
              ),
             SizedBox(height: 5),
             Text('Click the + - to see magic')  
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.remove),
            ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            )
        ],
      ),
    );
  }
}