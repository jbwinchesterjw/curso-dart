import 'dart:io';

enum IMCResult {
  AbaixoPeso,
  PesoSaudavel,
  SobrePeso,
  ObesidadeGrau1,
  ObesidadeGrau2,
  ObesidadeGrau3,
}

IMCResult calcularIMC(double peso, {double altura = 170}) {
  double alturaMetros = altura / 100;
  double imc = peso / (alturaMetros * alturaMetros);

  if (imc < 18.5) {
    return IMCResult.AbaixoPeso;
  } else if (imc >= 18.5 && imc < 25) {
    return IMCResult.PesoSaudavel;
  } else if (imc >= 25 && imc < 30) {
    return IMCResult.SobrePeso;
  } else if (imc >= 30 && imc < 35) {
    return IMCResult.ObesidadeGrau1;
  } else if (imc >= 35 && imc < 40) {
    return IMCResult.ObesidadeGrau2;
  } else {
    return IMCResult.ObesidadeGrau3;
  }
}

void main() {
  // Exemplo de uso
  double peso = 70;
  double altura = 165;

  IMCResult resultado = calcularIMC(peso, altura: altura);

  print('Seu IMC é $resultado');
}