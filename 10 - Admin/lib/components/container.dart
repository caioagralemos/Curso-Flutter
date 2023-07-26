import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final bool includeLogo;

  const ScreenContainer({super.key, required this.child, this.title = '', this.includeLogo = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: title != '' ? AppBar(title: Text(title)) : null,
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: includeLogo ? Image.asset('assets/logo.png', width: 200,) : Container(),
              ),
            Container(
              constraints: const BoxConstraints(minWidth: 300, maxWidth: 400),
              padding: const EdgeInsets.all(32),
              child: child,
            )])
          ],
    )));
  }
}
