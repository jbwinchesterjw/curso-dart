class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

class MembroClube extends Pessoa {
  String matricula;

  MembroClube(String nome, int idade, this.matricula) : super(nome, idade);
}

class VendaIngresso {
  String evento;
  String data;
  MembroClube comprador;

  VendaIngresso(this.evento, this.data, this.comprador);
}

void main() {
  // Criando uma pessoa
  Pessoa pessoa = Pessoa("João", 25);

  // Criando um membro do clube
  MembroClube membro = MembroClube("Maria", 30, "12345");

  // Criando uma venda de ingresso
  VendaIngresso venda = VendaIngresso("Show", "2023-06-30", membro);

  // Acessando os dados da venda
  print(venda.evento);  // Saída: Show
  print(venda.data);  // Saída: 2023-06-30
  print(venda.comprador.nome);  // Saída: Maria
  print(venda.comprador.matricula);  // Saída: 12345
}