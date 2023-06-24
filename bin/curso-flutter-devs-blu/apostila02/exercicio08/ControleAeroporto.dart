// class Pessoa {
//   String nome;
//   int idade;
//
//   Pessoa(this.nome, this.idade);
// }
//
// class Tripulante extends Pessoa {
//   String funcao;
//
//   Tripulante(String nome, int idade, this.funcao) : super(nome, idade);
// }
//
// class Passageiro extends Pessoa {
//   int numeroPoltrona;
//
//   Passageiro(String nome, int idade, this.numeroPoltrona) : super(nome, idade);
// }
//
// class Aviao {
//   String modelo;
//   int capacidade;
//
//   Aviao(this.modelo, this.capacidade);
// }
//
// class Voo {
//   Aviao aviao;
//   List<VooMembro> passageiros;
//
//   Voo(this.aviao) {
//     passageiros = [];
//   }
//
//   void adicionarPassageiro(Passageiro passageiro) {
//     if (passageiros.length < aviao.capacidade) {
//       passageiros.add(VooMembro(passageiro));
//       print("Passageiro ${passageiro.nome} adicionado ao voo.");
//     } else {
//       print("Não há mais vagas disponíveis no voo.");
//     }
//   }
// }
//
// class VooMembro {
//   Passageiro passageiro;
//   int numeroPoltrona;
//
//   VooMembro(this.passageiro) {
//     numeroPoltrona = passageiro.numeroPoltrona;
//   }
// }
//
// void main() {
//   Aviao aviao = Aviao("Boeing 747", 300);
//   Voo voo = Voo(aviao);
//
//   Passageiro passageiro1 = Passageiro("João", 30, 1);
//   voo.adicionarPassageiro(passageiro1);
//
//   Passageiro passageiro2 = Passageiro("Maria", 25, 2);
//   voo.adicionarPassageiro(passageiro2);
//
//   Passageiro passageiro3 = Passageiro("Carlos", 40, 3);
//   voo.adicionarPassageiro(passageiro3);
// }