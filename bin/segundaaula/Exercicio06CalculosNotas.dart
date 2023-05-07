import 'package:test/expect.dart';

/**
 * Vamos criar um sistema de cálculo de notas? A aplicação deve armazenar uma quantidade N de notas e
    calcular a média a qual o aluno chegou. A nota para passar de ano é 7.
 */
void main(List<String> arguments) {
  List<double> notas = [10.0, 9.0, 8.0, 6.5];
  double media = 0.0;
  for (int i = 0; i < notas.length; i++) {
    media = (notas[0] + notas[1] + notas[2] + notas[3]) / 4;
  }

  double mediaAredondada = double.parse(media.toStringAsFixed(2));
  if (mediaAredondada >= 7.0) {
    print("Aluno aprovado com media $mediaAredondada");
  } else if (mediaAredondada < 7.0) {
    print("Aluno reprovado com media $mediaAredondada");
  }
}
