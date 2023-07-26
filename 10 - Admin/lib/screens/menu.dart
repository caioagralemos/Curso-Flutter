import 'package:flutter/material.dart';
import 'package:minimal/utils/routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

    void goToRoute(context, route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: Center(
          child: Column(
          children: [
            ElevatedButton(onPressed: () => goToRoute(context, Routes.categories), child: const Text('Listar Categorias')),
            ElevatedButton(onPressed: () => goToRoute(context, Routes.category), child: const Text('Adicionar Categoria')),
            ElevatedButton(onPressed: () => goToRoute(context, Routes.movies), child: const Text('Listar Filmes')),
            ElevatedButton(onPressed: () => goToRoute(context, Routes.movie), child: const Text('Adicionar Filme')),
          ],)
        ));
  }
}
