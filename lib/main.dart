import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dados game',
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Center(child: Text('Dados')),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dados(),
      ),
    );
  }
}

class Dados extends StatefulWidget {
  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numbtnesquerda = 1;
  int numbtndireita = 1;

  void randomNums() {
    setState(() {
      numbtnesquerda = Random().nextInt(6) + 1;
      numbtndireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/dado$numbtnesquerda.png'),
            onPressed: () {randomNums();},
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dado$numbtndireita.png'),
            onPressed: () {randomNums();},
          )),
        ],
      ),
    );
  }
}
