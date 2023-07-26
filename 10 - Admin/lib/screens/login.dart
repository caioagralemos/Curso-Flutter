import 'package:flutter/material.dart';
import 'package:minimal/utils/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void doLogin(context) {
    Navigator.of(context).pushReplacementNamed(Routes.menu); // o Replacement não empilha views
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => doLogin(context), child: const Text('Entrar')),
      ),
    );
  }
}
