import '10 - helper.dart';

void main(List<String> args) {
  // parametros pra main são passados pelo terminal
  // dart Ex01.dart primParam segParam
  print(args);

  double resultado = somar(3.2, 91.2, 123.2, 12, 23);
  imprimirResultado(resultado);
  String concatenar = somarConcatenar("Ney", "mar");
  imprimirResultado(concatenar);

  // tipo função
  double Function(double, double) minhaSoma = somar;
  // double minhaSoma2 = somar(double, double) // não é possível
  print(minhaSoma(10, 20));

  // definindo func dentro da main
  int Function(int, int) somarInt = (n1, n2) {
    return n1 + n2;
  };

  somarInt(10, 2);

  print(somarIntArrow(1, 7));

  executarVariasVezes(imprimirResultado, 5);
}
