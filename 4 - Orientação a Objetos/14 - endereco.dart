class Endereco {
  String nome = "";
  int numero = 0;
  String bairro = "";
  String cidade = "";
  String cep = "00000-000";

  // CONSTRUTOR
  Endereco(
      {String nome = "",
      int numero = 0,
      String bairro = "",
      String cidade = "",
      String cep = ""}) {
    this.nome = nome;
    this.numero = numero;
    this.bairro = bairro;
    this.cidade = cidade;
    this.cep = cep;
  }

  void printaEndereco() {
    print("${this.nome} nº ${this.numero}, ${this.bairro}, ${this.cidade}");
    print(this.cep);
  }
}