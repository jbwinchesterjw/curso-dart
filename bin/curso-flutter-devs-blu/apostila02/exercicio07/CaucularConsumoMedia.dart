class CalculaConsumoMedia {
  double quantidadeCombustivelTotal;
  double quantidadeCombustivelAtual;
  double quilometragemPercorrida;

  CalculaConsumoMedia(
      this.quantidadeCombustivelTotal,
      this.quantidadeCombustivelAtual,
      this.quilometragemPercorrida,
      );

  double calcularMedia() {
    if (quilometragemPercorrida > 0) {
      return quantidadeCombustivelTotal / quilometragemPercorrida;
    } else {
      return 0;
    }
  }
}

class Carro {
  double capacidadeTanque;
  double quilometragemPercorrida;
  double quantidadeCombustivelAtual;

  Carro(
      this.capacidadeTanque,
      this.quilometragemPercorrida,
      this.quantidadeCombustivelAtual,
      );

  void encherTanque() {
    quantidadeCombustivelAtual = capacidadeTanque;
  }

  double calcularMedia() {
    if (quilometragemPercorrida > 0) {
      return quantidadeCombustivelAtual / quilometragemPercorrida;
    } else {
      return 0;
    }
  }
}

void main() {
  Carro meuCarro = Carro(50, 10000, 30);
  meuCarro.encherTanque();
  print("Média de consumo: ${meuCarro.calcularMedia()} km/L");
}