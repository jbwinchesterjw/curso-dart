import 'dart:math';

void main(List<String> arguments) {
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
