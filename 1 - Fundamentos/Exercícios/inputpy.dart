import 'dart:io';

String input(text) {
  print(text);
  return stdin.readLineSync().toString();
}

int inputint(text) {
  print(text);
  var n = stdin.readLineSync().toString();
  return int.parse(n);
}

void main() {
  var seuNome = input('Me diga seu nome: ');
  print('Olá, $seuNome');
}
