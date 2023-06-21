import 'package:flutter/material.dart';

void main(){
  runApp(const HelloWorld());
}

// Widget :: Componente

class HelloWorld extends StatelessWidget {
  // STATELESS - Imutável!

  // construtor - key diz ao flutter que essa classe é um widget
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp - app que usa material design
      home: Scaffold (
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Column(
          children: [
            const Text('Hello World!'),
            const Text('Olá, mundo!'),
            const ElevatedButton(onPressed: null, child: Text("Me aperta")),
            Image.asset(
              'assets/images/lake.jpg',
              width: 300.0,
              height: 120.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}