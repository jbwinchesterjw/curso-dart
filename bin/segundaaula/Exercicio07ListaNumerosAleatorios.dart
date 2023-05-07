import 'dart:math';

/**
 * Crie uma lista de valores inteiros. Essa lista deve ser populada utilizando somente números aleatórios.
    Após popular essa lista, remova todos os itens pares dessa lista, deixando somente os valores impares.
    Em uma nova lista, devem ficar somente os valores pares.
 */
void main(List<String> arguments) {
  List<int> numerosAleatorios = List.generate(10, (_) => Random().nextInt(10));
  List<int> numerosIpa = [0];
  List<int> numerosPares = [0];

  for (int i = 0; i < numerosAleatorios.length; i++) {
    if (numerosAleatorios[i] % 2 == 0) {
      numerosPares.add(numerosAleatorios[i]);
    } else {
      numerosIpa.add(numerosAleatorios[i]);
    }
  }

  print(numerosAleatorios);
  print(numerosIpa);
  print(numerosPares);
}
