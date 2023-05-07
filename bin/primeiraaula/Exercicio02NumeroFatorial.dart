void main(List<String> arguments) {
  // int fatorial = 5;
  // int valorAnterior = 1;
  //
  // for (int i = 1; i <= fatorial; i++) {
  //   // valorAnterior *= i;
  //   valorAnterior = valorAnterior * i;
  //
  //   print(valorAnterior);
  //   print(i);
  // }
  /**
   * Vamos escrever um programa que calcule o número fatorial de um número. Esse número será lido a partir
      de uma variável.
      O fatorial é obtido somando multiplicando todos os valores menores ou iguais ao número que se deseja
      fatorar. Ex:
      5! = 1 x 2 x 3 x 4 x 5 = 120
   */
  int numeroDesejado = 5;
  int numeroFatorado = fatorarNumero(numeroDesejado);
  print("Numero fatorado $numeroDesejado, Resultado da fatoração $numeroFatorado");
}

int fatorarNumero(int numeroDesejado) {
  int resultado = 1;
  for (int i = 1; i <= numeroDesejado; i++) {
    resultado = resultado * i;
  }
  return resultado;
}
