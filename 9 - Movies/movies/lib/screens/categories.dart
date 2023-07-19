import 'package:flutter/material.dart';
import 'package:movies/components/category.dart';
import 'package:movies/data/dummy.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200),
      children:
        categories.map((category) {
          return CategoryItem(category: category);
        }).toList(),
    );
  }
}
