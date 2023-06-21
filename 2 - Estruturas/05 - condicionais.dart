import 'dart:io';

String input(text) {
  print(text);
  return stdin.readLineSync().toString();
}

void main() {
  double nota = double.parse(input('nota'));
  if (nota >= 6) {
    print('aprovado');
  } else if (nota >= 5 && nota < 6) {
    print('recuperação');
  } else {
    print('reprovado');
  }
}
