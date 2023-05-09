import 'dart:math';

void main() {
  List<String> pessoas = [
    'João',
    'Maria',
    'Pedro',
    'Ana',
    'Carlos',
    'Laura',
  ];

  if (pessoas.length % 2 != 0) {
    print('A quantidade de pessoas na lista deve ser par.');
    return;
  }

  Set<String> amigosSorteados = Set<String>();

  for (var pessoa in pessoas) {
    String amigoSorteado;
    do {
      amigoSorteado = pessoas[Random().nextInt(pessoas.length)];
    } while (amigoSorteado == pessoa || amigosSorteados.contains(amigoSorteado));

    amigosSorteados.add(amigoSorteado);

    print('$pessoa tirou o amigo(a) secreto(a): $amigoSorteado');
  }
}