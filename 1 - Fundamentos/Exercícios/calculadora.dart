import 'dart:io';

String input(text) {
  print(text);
  return stdin.readLineSync().toString();
}

int soma(x, y) {
  return x + y;
}

int sub(x, y) {
  return x - y;
}

int multi(x, y) {
  return x * y;
}

int div(x, y) {
  return x / y;
}

void main() {
  var escolha = input('Digite 1 para soma, 2 para subtração, 3 para multiplicação ou 4 pra divisão');

  var n1 = input('digite seu primeiro número: ');
  int x = int.parse(n1);

  var n2 = input('digite seu segundo número: ');
  int y = int.parse(n2);

  if (escolha == '1') {
    print('O resultado de sua soma entre $x e $y é ${soma(x, y)}');
  } else if (escolha == '2') {
    print('O resultado de sua subtração entre $x e $y é ${sub(x, y)}');
  } else if (escolha == '3') {
    print(
        'O resultado de sua multiplicação entre $x e $y é ${multi(x, y)}');
  } else if (escolha == '4') {
    print('O resultado de sua divisão entre $x e $y é ${div(x, y)}');
  } else {
    print('Algo deu errado :/');
  }
}