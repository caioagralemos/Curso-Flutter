import 'package:flutter/material.dart';
import 'package:movies/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [category.color.withOpacity(.5), category.color],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        )
      ),
      child: Text(category.title),
    );
  }
}
