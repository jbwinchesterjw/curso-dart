class FolhaSalarial {
  double valorPorHora;
  double horasTrabalhadas;

  FolhaSalarial(this.valorPorHora, this.horasTrabalhadas);

  double calcular() {
    return valorPorHora * horasTrabalhadas;
  }
}

class FolhaSalarialVendedor extends FolhaSalarial {
  double valorBonificacao;
  int quantidadeVendas;

  FolhaSalarialVendedor(double valorPorHora, double horasTrabalhadas, this.valorBonificacao, this.quantidadeVendas)
      : super(valorPorHora, horasTrabalhadas);

  @override
  double calcular() {
    return super.calcular() + (valorBonificacao * quantidadeVendas);
  }
}

void main() {
  // Exemplo de uso da classe FolhaSalarial
  FolhaSalarial folha = FolhaSalarial(10.0, 160.0);
  double valorTotal = folha.calcular();
  print('Valor total a receber: \$${valorTotal.toStringAsFixed(2)}');

  // Exemplo de uso da classe FolhaSalarialVendedor
  FolhaSalarialVendedor folhaVendedor = FolhaSalarialVendedor(10.0, 160.0, 2.0, 50);
  double valorTotalVendedor = folhaVendedor.calcular();
  print('Valor total a receber do vendedor: \$${valorTotalVendedor.toStringAsFixed(2)}');
}
