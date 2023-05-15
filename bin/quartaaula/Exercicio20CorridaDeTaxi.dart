double calcularValorCorrida(double distancia, {int bandeira = 1, String convenio = 'Não'}) {
  if (distancia == 0) {
    throw Exception('Corrida inválida: distância igual a zero.');
  }

  double valorMinimo = 3.50;
  double valorPorKm = 1.25;
  double valorPorBandeira = 0.35 * (bandeira - 1);
  double valorTotal = valorMinimo + (distancia * valorPorKm) + valorPorBandeira;

  if (convenio.toLowerCase() == 'sim') {
    valorTotal *= 0.9; // Aplicar desconto de 10% caso tenha convênio
  }

  return valorTotal;
}

void main() {
  try {
    double distancia = 10.5;
    int bandeira = 3;
    String convenio = 'Sim';

    double valorCorrida = calcularValorCorrida(distancia, bandeira: bandeira, convenio: convenio);

    print('O valor da corrida é R\$${valorCorrida.toStringAsFixed(2)}');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
