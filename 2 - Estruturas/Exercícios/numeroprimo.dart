import 'dart:io';

int input(text) {
  print(text);
  var n = stdin.readLineSync().toString();
  return int.parse(n);
}

void main() {
  int numero = input('Diga seu numero: ');
  bool ehPrimo = true;

  for (var i = 2; i < numero; i++) {
    if (numero % i == 0) {
      ehPrimo = false;
      break;
    }
  }
  ;

  if (ehPrimo == true) {
    print('é primo!');
  } else {
    print('não é primo');
  }
}
