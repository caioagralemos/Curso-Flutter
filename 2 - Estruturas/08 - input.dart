import 'dart:io';

void main() {
  String leitura = '';
  while (leitura != 'sair') {
    print('Programa em execução...');
    leitura = stdin.readLineSync().toString(); // o input
  }
  print('Programa finalizado');
}
