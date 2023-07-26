import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final List<Movie> movies; // nossa lista de filmes

  const Category(
      {required this.id, required this.title, this.color = Colors.purple, required this.movies});
}
