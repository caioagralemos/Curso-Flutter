// Numa eleição existem três candidatos: A(13), B(22) e C(12). Faça um programa que peça o número
// total de eleitores. Peça para cada eleitor votar e ao final mostrar o número de votos de cada
// candidato.
import 'dart:io';

int input(text) {
  print(text);
  var n = stdin.readLineSync().toString();
  return int.parse(n);
}

void main() {
  int qEleitores = input('numero de eleitores: ');
  Map votos = {'polvo': 0, 'bosonario': 0, 'sirio': 0, 'branco': 0, 'nulo': 0};
  for (var i = 0; i < qEleitores; i++) {
    print('eleitor registro $i');
    int voto = input(
        'vote!\n13 para polvo\n22 para bosonario\n12 para sirio\n00 para branco\nou qualquer outra coisa para nulo:');
    if (voto == 13) {
      votos['polvo'] = votos['polvo'] + 1;
    } else if (voto == 22) {
      votos['bosonario'] = votos['bosonario'] + 1;
    } else if (voto == 12) {
      votos['sirio'] = votos['sirio'] + 1;
    } else if (voto == 00) {
      votos['branco'] = votos['branco'] + 1;
    } else {
      votos['nulo'] = votos['nulo'] + 1;
    }
    print('voto computado!\n\n');
  }
  print('BOCA DE URNA:\n');
  print(
      'Polvo: ${votos['polvo']} (${(votos['polvo'] / qEleitores) * 100}% dos votos.)');
  print(
      'Bosonario: ${votos['bosonario']} (${(votos['bosonario'] / qEleitores) * 100}% dos votos.)');
  print(
      'Sirio: ${votos['sirio']} (${(votos['sirio'] / qEleitores) * 100}% dos votos.)');
  print(
      'Branco: ${votos['branco']} (${(votos['branco'] / qEleitores) * 100}% dos votos.)');
  print(
      'Nulo: ${votos['nulo']} (${(votos['nulo'] / qEleitores) * 100}% dos votos.)');
  print('');
}
