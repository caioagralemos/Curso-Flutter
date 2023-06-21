void main() {
  // ===== tipo Lista =====
  List alunos = ['Caio', 'Zeca', 'Douglas']; // lista(normal)
  List notas = [10, 9.5, 9];
  List<Object> cpf = [
    '123.175.343-23',
    '900.123.223-76',
    '923.594.729-10',
    10
  ]; // list-object é um tipo de lista que aceita qualquer tipo de variável
  List<String> alunos2 = ['Caio', 'Davi', 'Marcelo'];
  // alunos2.add(100); vai dar erro pois nós tipamos a lista
  alunos2.add('Zeca'); // mas nos permite add string

  print(alunos.length); // quantidade de itens numa lista
  print(notas[0]); // indexavel igual as outras linguagens
  print(cpf.elementAt(2)); // outro jeito de pegar por index

  alunos.add('Davi'); // adicionando algo numa lista (por último)
  alunos.remove('Douglas'); // removendo algo especifico numa lista
  alunos.removeAt(1); // remove por index
  alunos.insert(0, 'Professor Flávio'); // (index, elemento)
  print(alunos);

// ===== tipo Map =====
  Map aluno1 = {'nome': 'Caio', 'nota': 10, 'cpf': '123.175.343-23'};
  Map aluno2 = {'nome': 'Zeca', 'nota': 9.5, 'cpf': '900.123.223-76'};
  Map aluno3 = {'nome': 'Davi', 'nota': 9, 'cpf': '923.594.729-10'};

  List todosAlunos = [aluno1, aluno2, aluno3]; // lista de maps

  print(aluno1['nome']); // funciona normalmente, mas o object/dic se chama map
  print(aluno2['cpf']);
  print(aluno3['nota']);

  print(todosAlunos[1]['nome']); // indexando lista de maps!

  print(
      'o ${aluno3['nome']} tirou ${aluno3['nota']} na prova.'); // interpolação

// ===== tipo Set =====
  Set conjunto = {'Flavio', 'Bruna'}; // declarando (sem ordem, nem repetição)
  conjunto.add('Caio'); // adicionando elemento
  conjunto.remove('Flavio'); // removendo elemento
  print(conjunto);
}
