import 'dart:math';
import 'dart:io';

void main() {
  // var tentarInput = stdin.readLineSync();
  // print('olá, ${tentarInput}'); // input

  bool jogo = true;
  bool fimCPU = false;

  int valorInicialPlayer = Random().nextInt(10) + 1;
  int valorInicialCPU = Random().nextInt(10) + 1;

  int valorPlayer = valorInicialPlayer + Random().nextInt(10) + 1;
  int valorCPU = valorInicialCPU + Random().nextInt(10) + 1;

  int cartasPuxadasPlayer = 1;
  int cartasPuxadasCPU = 1;
  int chance = 0;

  print('sua carta visivel é: ${valorInicialPlayer}');
  print('a carta visivel do CPU é: ${valorInicialCPU}');

  while (fimCPU == false) {
    if (valorCPU <= 11) {
      valorCPU = valorCPU + Random().nextInt(10) + 1;
      cartasPuxadasCPU += 1;
    } else if (valorCPU > 11 && valorCPU < 15) {
      chance = Random().nextInt(10);
      if (chance > 2) {
        valorCPU = valorCPU + Random().nextInt(10);
        cartasPuxadasCPU += 1;
      } else {
        fimCPU = true;
      }
    } else if (valorCPU >= 15 && valorCPU < 18) {
      chance = Random().nextInt(10);
      if (chance > 7) {
        valorCPU = valorCPU + Random().nextInt(10) + 1;
        cartasPuxadasCPU += 1;
      } else {
        fimCPU = true;
      }
    } else {
      fimCPU = true;
    }
  }
  ;

  while (jogo == true) {
    print(
        'seu valor, com ${cartasPuxadasPlayer} cartas puxadas, é ${valorPlayer}');
    print(
        'a carta do CPU é ${valorInicialCPU}, e ele tem ${cartasPuxadasCPU} cartas puxadas');
    print('digite 1 para puxar ou 0 para parar');
    var escolha = stdin.readLineSync();
    if (escolha == '0') {
      jogo = false;
    } else {
      valorPlayer = valorPlayer + Random().nextInt(10) + 1;
      cartasPuxadasPlayer += 1;
      if (valorPlayer <= 21) {
        Null;
      } else {
        jogo = false;
      }
    }
  }

  print(
      'fim de jogo! seu valor é ${valorPlayer} e o valor do CPU é ${valorCPU}');
  if (valorPlayer > valorCPU && valorPlayer <= 21) {
    print('você ganhou! :)');
  } else if (valorCPU > valorPlayer && valorCPU <= 21) {
    print('você perdeu :(');
  } else if (valorCPU > 21 && valorPlayer <= 21) {
    print('você ganhou! :)');
  } else if (valorPlayer > 21 && valorCPU <= 21) {
    print('você perdeu! :)');
  } else {
    print('empate!');
  }
}