import '13 - pessoa.dart';
import '14 - endereco.dart';
import '15 - gato.dart';

void main() {
  // PESSOA
  Pessoa cal = new Pessoa("Caio", 19);
  cal.cpf = "141.914.574-61";
  cal.detailUser();

  Pessoa zrb = new Pessoa("Zeca", 18);
  zrb.cpf = "241.124.374-01"; // USANDO SETTER
  print(zrb.cpf); // USANDO GETTER
  zrb.detailUser();

  // ENDEREÇO
  Endereco my_work = new Endereco(
      nome: "Av. Comendador Leão",
      numero: 734,
      bairro: "Poço",
      cep: "57025-000",
      cidade: "Maceió");

  my_work.printaEndereco();

  // GATO E ANIMAL (HERANÇA E POLIMORFISMO)
  Gato gato1 = new Gato("Nina");
  gato1.emitirSom();

}
