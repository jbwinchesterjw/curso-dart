import 'dart:math';

/**
 * Crie uma lista de valores inteiros. Essa lista deve ser populada utilizando somente números aleatórios.
    Após popular essa lista, escreva uma função que retorne o terceiro menor número dessa lista.
    Ex:
    [7, 12, 14, 3, 22, 9]
    o menor número dessa lista é 3
    o segundo menor número dessa lista é 7
    o terceiro menor número dessa lista é 9, que é o resultado esperado.
 */
List<int> generateRandomList(int tamanho, int min, int max) {
  Random random = Random();
  List<int> lista = [];

  for (int i = 0; i < tamanho; i++) {
    int numero = min + random.nextInt(max - min + 1);
    lista.add(numero);
  }

  return lista;
}

int encontrarTerceiroMenor(List<int> lista) {
  List<int> listaOrdenada = List.from(lista);
  listaOrdenada.sort();

  return listaOrdenada[2];
}

void main() {
  List<int> numeros = generateRandomList(6, 1, 30);
  print(numeros);

  int terceiroMenor = encontrarTerceiroMenor(numeros);
  print("O terceiro menor número é: $terceiroMenor");
}







