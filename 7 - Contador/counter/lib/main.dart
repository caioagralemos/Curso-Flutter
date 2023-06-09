import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void increment() {}
  void decrement() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
          ),
          body: Column(
            children: [
              Padding(padding: EdgeInsets.all(30),),
              const Text('CONTADOR'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: increment, child: const Text('Incrementar')),
                  SizedBox(
                    width: 12,
                  ), // Padding Horizontal
                  ElevatedButton(
                      onPressed: decrement, child: const Text('Decrementar')),
                ],
              )
            ],
          )),
    );
  }
}

class CounterView extends State {
  var counter = 0;

  void increment() {}

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(26),
                child: Text(
                  counter.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 42),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: increment,
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20)),
                      child: const Text("Incrementar")),
                  const SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                      onPressed: decrement,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          padding: const EdgeInsets.symmetric(horizontal: 20)),
                      child: const Text("Decrementar")),
                ],
              ),
            ],
          )),
    );
  }
}
