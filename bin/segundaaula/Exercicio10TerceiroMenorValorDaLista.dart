import 'dart:math';

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







