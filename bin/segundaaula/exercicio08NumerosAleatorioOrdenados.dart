import 'dart:math';

/**
 * Crie uma lista de valores inteiros. Essa lista deve ser populada utilizando somente números aleatórios.
    Após popular essa lista, escreva uma função que ordene essa lista em ordem crescente, do menor para o
    maior.
    Essa função deve receber por parâmetro uma lista de inteiros, e retornar uma nova lista de inteiros,
    ordenada.
 */
void main(List<String> arguments) {
  List<int> numerosAleatorios = List.generate(10, (_) => Random().nextInt(10));
  var lsitaOrdenada = ordenacaoLista(numerosAleatorios);
  print(numerosAleatorios);
  print(lsitaOrdenada);
}

List<int> ordenacaoLista(List<int> numerosAleatorios) {
  List<int> novaLista = List.of(numerosAleatorios);
  for (int i = 0; i < novaLista.length - 1; i++) {
    for (int j = i; j < novaLista.length; j++) {
      if (novaLista[i] > novaLista[j]) {
        int temp = novaLista[i];
        novaLista[i] = novaLista[j];
        novaLista[j] = temp;
      }
    }
  }
  return novaLista;
}
