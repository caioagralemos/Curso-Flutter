void main() {
  double n1 = 3;
  double n2 = 5;

  // algébricos ===
  print(n1 + n2); // soma
  print(n1 - n2); // subtração
  print(n1 * n2); // multiplicação
  print(n1 / n2); // divisão
  print(n1 % n2); // resto

  // de comparação ===
  print(n1 == n2); // aqui não existe ===
  print(n1 > n2); // maior que
  print(n1 < n2); // menor que
  print(n1 >= n2); // maior igual
  print(n1 <= n2); // menor igual
  print(n1 != n2); // diferente
  print(!(n1 == n2)); // invertendo booleano

  int divisaoInteira = 5 ~/ 2; // tio barra p divisão inteira (bizarro)
  print('A divisão inteira de 5 por 2 é ${divisaoInteira}');

  // booleanos ===
  Map aluno = {'matriculado': true, 'ativo': false};
  if (aluno['matriculado'] && aluno['ativo']) {
    // operador && (e)
    print('Comprovante de Vínculo');
  } else if (aluno['matriculado'] || aluno['ativo']) {
    // operador || (ou)
    if (aluno['matriculado']) {
      print('Algo deu errado. É possível imprimir o comprovante de matrícula');
    } else {
      print('Algo deu errado. É possível imprimir o comprovante de atividade');
    }
  } else {
    print('Você não está ativo nem matriculado!');
  }
  ;
}
