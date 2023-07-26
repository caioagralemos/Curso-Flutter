import 'package:flutter/material.dart';
import 'package:minimal/screens/categories.dart';
import 'package:minimal/screens/login.dart';
import 'package:minimal/screens/menu.dart';
import 'package:minimal/screens/movie.dart';
import 'package:minimal/screens/movies.dart';
import 'package:minimal/utils/routes.dart';

void main() {
  runApp(const MoviesAdmin());
}

class MoviesAdmin extends StatelessWidget {
  const MoviesAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.login: (context) => const LoginScreen(),
        Routes.menu: (context) => const MenuScreen(),
        Routes.categories: (context) => const CategoriesScreen(),
        Routes.category: (context) => const CategoriesScreen(),
        Routes.movies: (context) => const MoviesScreen(),
        Routes.movie: (context) => const MovieScreen(),
      },
    );
  } 
}

// Scaffold é uma classe em flutter que fornece muitos widgets,
// tais como: Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, 
// App-Bar, entre outros. Scaffold irá expandir ou ocupar toda a tela do 
// dispositivo. Ele ocupará o espaço disponível.