class Pessoa {
  String nome = "";
  String _cpf = ""; // underline torma a variavel privada
  int idade = 0;

  // CONSTRUTOR
  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  void set cpf(String cpf) {
    // SETTER
    if (validarCPF(cpf)) {
      this._cpf = cpf;
    } else {
      throw new Error();
    }
  }

  String get cpf {
    // GETTER NÃO USA PARENTESES
    return this._cpf;
  }

  void detailUser() {
    print("Nome: ${this.nome}");
    print("CPF: ${this._cpf}");
    print("Idade: ${this.idade}");
    print("\n");
  }

  bool validarCPF(String cpf) {
    return cpf.length == 14;
  }
}
