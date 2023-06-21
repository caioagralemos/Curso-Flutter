void main() {
  print('Iniciando execução'); // é obrigatório o ponto e vírgula (:/)

  int dataNascimento = 2003; // linguagem tipada (fortemente) e camelCase
  print(dataNascimento);

  double notaProva = 6.55; // double para decimais (saudades de C?)
  print(notaProva);

  String nomeAluno = 'Caio'; // string definida por aspas simples ou duplas
  String nomeFilme = "Harry Potter";
  print(nomeAluno);
  print(nomeFilme);

  notaProva = 9.5; // como variáveis, é possível mudar o valor se mesmo tipo

  final double PI = 3.14; // criando constantes (aqui def com maiusculas)
  print(PI);

  bool ola = PI > 5; // booleano (false)
  print(ola);

  print('Finalizando execução');
}
