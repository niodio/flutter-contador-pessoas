import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool isFull = false;

  void decrement() {
    // incrementar
    setState(() {
      if (count > 0) count--;
      isFullMethod();
    });
    log('Decrementando...$count');
  }

  void increment() {
    // incrementar
    setState(() {
      if (count < 20) {
        count++;
        isFullMethod();
      }
    });
    log('Incrementando...$count');
    // print('Incrementando...');
  }

  void isFullMethod() {
    count == 20 ? isFull = true : isFull = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: const Text('Contador de Pessoas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(isFull ? 'Lotado!' : 'Pode entrar!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            count.toString(),
            style: const TextStyle(
                fontSize: 100.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decrement,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[900],
                  textStyle: const TextStyle(
                    fontSize: 50.0,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
                child: const Text('Saiu'),
              ),
              // add a space between buttons
              const SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: increment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[900],
                  textStyle: const TextStyle(
                    fontSize: 50.0,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
                child: const Text('Entrou'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// =========================================

