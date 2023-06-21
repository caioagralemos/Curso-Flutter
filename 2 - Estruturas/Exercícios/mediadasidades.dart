// Escreva um programa que receba a idade de vários alunos e informa a idade média da turma
// Informe zero para finalizar as entradas.
import 'dart:io';

int input(text) {
  print(text);
  var n = stdin.readLineSync().toString();
  return int.parse(n);
}

void main() {
  int entrada;
  int totalIdades = 0;
  int quantidadeDeRespostas = 0;
  do {
    entrada = input('digite uma idade');
    if (entrada == 0) {
      break;
    } else {
      totalIdades = totalIdades + entrada;
      quantidadeDeRespostas = quantidadeDeRespostas + 1;
    }
  } while (entrada != 0);

  print(
      'A média de idade da turma com $quantidadeDeRespostas alunos é ${totalIdades/quantidadeDeRespostas} anos.');
}
