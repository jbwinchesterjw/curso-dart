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
//
// class Biblioteca {
//
//   String nome;
//   int qtdVolumes;
//   String? nomeBibliotecario;
//
//   /*
//   Biblioteca(int qtdLivros) {
//     this.qtdVolumes = qtdLivros;
//   }
//   */
//
//   Biblioteca({required this.nome,
//     required this.qtdVolumes,
//     this.nomeBibliotecario});
// }
//
// class BibliotecaDigital extends Biblioteca {
//   String url;
//   String? formatoAceito;
//
//   BibliotecaDigital(this.url,
//       String nomeBibioteca,
//       int qtdVolumesBiblioteca,
//       [ String? nomeBiblitocario ]) : super(
//       nome: nomeBibioteca,
//       qtdVolumes: qtdVolumesBiblioteca,
//       nomeBibliotecario: nomeBiblitocario
//   );
//
//   BibliotecaDigital.musica(this.url,
//       String nomeBiblioteca,
//       int qtdVolumesBiblioteca,
//       [ String? this.formatoAceito ]
//       ) : super(
//       nome: nomeBiblioteca,
//       qtdVolumes: qtdVolumesBiblioteca
//   );
//
//   BibliotecaDigital.builder(
//       int itemCount,
//       String itemBuilder,
//       );
// }
//
// void main() {
//   BibliotecaDigital youtube = BibliotecaDigital(
//       "http://test.com",
//       "Youtube",
//       5000
//   );
//
//   print(youtube.nome);
//
//   Biblioteca spotify = BibliotecaDigital.Musica(
//       "http://spotify.com",
//       "Spotify",
//       100000,
//       "mp3"
//   );
// }