void main() {
  // FOR
  
  // for (var i = 0; i < 152; i++) {
  //   String printavel = '';
  //   for (var j = 0; j < i; j++) {
  //     printavel = printavel + '#';
  //   }
  //   for (var k = 0; k < 6; k++) {
  //     print(printavel);
  //   }
  // }

  List<String> alunos = ['Flávio', 'João', 'Maria'];
  for (String elemento in alunos.reversed) {
    // iterando e revertendo
    print(elemento);
  }
  ;

  Map aluno = {'nome': 'Caio', 'idade': 19, 'matricula': true};

  for (Object valor in aluno.values) {
    print(valor); // iterando sobre um Map
  }
}
