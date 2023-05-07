import 'dart:math';

void main(List<String> raguments){
  int numeroAleatorio = 0;
  Random random = Random();
  List<int> numerosAleatori = List.generate(10, (_) => Random().nextInt(10));
  while (numeroAleatorio != 7) {
    numeroAleatorio = random.nextInt(10);
    print("O número aleatório é $numeroAleatorio");
  }
  /**int numeroGerado;
      Random random = Random();
      numeroGerado = random.nextInt(10);

      while(numeroGerado != 7){
      print("Numero${numeroGerado}");
      }*/
}