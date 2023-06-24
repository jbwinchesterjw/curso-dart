// class Pais {
//   String nome;
//   int populacao;
//   double area;
//
//   Pais(this.nome, this.populacao, this.area);
// }
//
// class Continente {
//   String nomeContinete;
//   List<Pais> _paises;
//
//   Continente(this.nomeContinete) {
//     _paises = [];
//   }
//
//   void adicionarPais(Pais pais) {
//     _paises.add(pais);
//   }
//
//   int get populacaoTotal {
//     int total = 0;
//     for (var pais in _paises) {
//       total += pais.populacao;
//     }
//     return total;
//   }
//
//   double get areaTotal {
//     double total = 0;
//     for (var pais in _paises) {
//       total += pais.area;
//     }
//     return total;
//   }
// }
//
// void main() {
//   // Exemplo de uso da classe Continente
//   Continente continente = Continente("América");
//   continente.adicionarPais(Pais("Brasil", 211000000, 8515767));
//   continente.adicionarPais(Pais("Argentina", 44938712, 2780400));
//   continente.adicionarPais(Pais("Canadá", 38008005, 9976140));
//
//   print("População total do continente: ${continente.populacaoTotal}");
//   print("Área total do continente: ${continente.areaTotal}");
// }
