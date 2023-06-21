class Produto {
  String? descricao;
  double? preco;

  Produto(String descricao, double preco) {
    this.descricao = descricao;
    this.preco = preco;
  }
}

class Cliente {
  String? nome;
  Cliente(String nome) {
    this.nome = nome;
  }
}

class Venda {
  Cliente? cliente;
  List<Produto>? produtos;
}
