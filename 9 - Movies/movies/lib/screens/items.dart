import 'package:flutter/material.dart';
import 'package:movies/data/dummy.dart';
import 'package:movies/models/category.dart';

class MoviesScreen extends StatelessWidget {
  final Category category;
  const MoviesScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Column(
          children: category.movies.map((movie) {
            return Text(movie.title);
      }).toList(),
        ),
      )
    );
  }
}
