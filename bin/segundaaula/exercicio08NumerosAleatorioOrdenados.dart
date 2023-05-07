import 'dart:math';

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
