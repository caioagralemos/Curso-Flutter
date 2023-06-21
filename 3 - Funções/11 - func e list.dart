import './10 - helper.dart';

void main() {
  // filtrando com lista --
  List<double> notas = [6.5, 7.5, 8.0, 5.4, 2.3];

  bool filtrarNotasVermelhas(double nota) => (nota <= 6);

  // essa função where itera a lista numa func, cria um array na saida
  // e retorna os elementos que retornarem true (where == filter)
  var notasVermelhas = notas.where(filtrarNotasVermelhas);

  print(notasVermelhas);

  // filtrando com Map --
  List alunos = [
    {'nome': 'Caio', 'idade': 19},
    {'nome': 'Zeca', 'idade': 18},
    {'nome': 'Ermenegildo', 'idade': 68},
  ];

  // função que recebe um aluno e retorna o nome do aluno
  dynamic filtrarNome(dynamic aluno) => aluno['nome'];
  dynamic contarChar(dynamic nome) => nome.length;

  var nomesAlunos = alunos.map(filtrarNome).map(contarChar);
  print(nomesAlunos); // (map == map)

  // função reduce - executa uma função por todo o array
  // até reduzir o array a um elemento só
  // ex: 6.5 + 7.5 + 8.0 + 5.4 + 2.3 entrega um elemento só (29.7)
  double total = notas.reduce(somar);
  print(total);

  // map rápido
  var nomes = alunos.map((dynamic aluno) => aluno['nome']);

  // confusão
  var nomes2 = alunos
      .map((dynamic aluno) => aluno['nome'])
      .map((dynamic nome) => nome.length)
      .where((qtde) => qtde > 5)
      .reduce((elem1, elem2) => elem1 + elem2);

  print(nomes);
  print(nomes2);
}
