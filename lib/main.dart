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

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/dado1.png'),
            onPressed: () {
              print('O botão da esquerda foi pressionado');
            },
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dado1.png'),
            onPressed: () {
              print('O botão da direita foi pressionado');
            },
          )),
        ],
      ),
    );
  }
}
