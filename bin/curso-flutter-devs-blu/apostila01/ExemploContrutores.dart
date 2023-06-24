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