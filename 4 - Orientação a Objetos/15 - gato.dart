class Animal {
  String nome = "";

  Animal(String nome) {
    this.nome = nome;
  }

  void emitirSom() {
    print("Oi, eu sou um animal!");
  }
}

class Gato extends Animal {
  String? corDoPelo;

  Gato(String nome) : super(nome) {}

  void emitirSom() {
    // se existirem metodos iguais (polimorfismo)
    // o mais específico será executado
    print('${this.nome} diz Miau!');
  }
}
