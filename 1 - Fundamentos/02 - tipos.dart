void main() {
  // int, double, bool e String
  String notaAlunoStr = '8.5';
  double notaAluno = double.parse(notaAlunoStr); // conversão!
  print(notaAluno.runtimeType); // var.runtimeType retorna o tipo da nossa var
  print(notaAlunoStr.runtimeType);

  dynamic valor = 1;
  valor = 'ola';
  print(valor); // tipo dynamic permite ser realocado para outro tipo
}
