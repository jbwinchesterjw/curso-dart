import 'dart:math';

void main(List<String> arguments) {
  /**
   * Escreva uma função que receba duas listas por parâmetro, e que retorne um terceiro array, com somente
   * as diferenças entre as duas listas.
   * Ex:
   * lista1 = [7, 8, 9, 10];
   * lista2 = [7, 10, 14];
   * listaResultado = [8, 9, 14];
   */
  List<int> lista01 = List.generate(10, (index) => Random().nextInt(10));
  List<int> lista02 = List.generate(10, (index) => Random().nextInt(10));
  List<int> resulatadoDaLista = retornaDiferencaEntreListas(lista01, lista02);
  print(lista01);
  print(lista02);
  print(resulatadoDaLista);
}

List<int> retornaDiferencaEntreListas(List<int> lista01, List<int> lista02) {
  List<int> diferencaEntreListas = [0];
  for(int element in lista01){
    if(!lista02.contains(element)){
      diferencaEntreListas.add(element);
    }
  }

  for(int element in lista02){
    if(!lista01.contains(element)){
      diferencaEntreListas.add(element);
    }
  }
  return diferencaEntreListas;
}
