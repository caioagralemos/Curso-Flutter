// arquivo criado para guardar funções que podem ser importadas na main

// arrow functions em dart
var somarIntArrow = (int n1, int n2) => n1 + n2;

// Função comum
void imprimirResultado([result = 'Null']) {
  print("Imprimindo o resultado!");
  print('Resultado = $result');
}

// Utilizando default values para tornar um parametro não obrigatório
double somar(double a, double b, [double c = 0, double d = 0, double e = 0]) {
  return a + b + c + d + e;
}

// Função dinâmica
dynamic somarConcatenar(dynamic a, dynamic b) {
  return a + b;
}

// Parâmetro e Objeto
void cadastrarUsuario(
    {String nome = "", int? idade, String email = '', String cpf = ''}) {
  print('CADASTRO ÚNICO:' "\n" 'NOME $nome');
}

// Função que recebe uma função por parametro
void executarVariasVezes(Function func, int n) {
  for (int i = 0; i < n; i++) {
    // essa func precisa ser uma func sem parâmetro
    func();
  }
}

// Função que retorna uma função
Function getfunc() {
  var teste = (int n1, int n2) => n1 * n2;
  return teste;
}
