import 'package:flutter/material.dart';
import 'package:movies/screens/categories.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Filmes'),
        ),
        body: const CategoriesScreen(),
      ),
    );
  }
}
