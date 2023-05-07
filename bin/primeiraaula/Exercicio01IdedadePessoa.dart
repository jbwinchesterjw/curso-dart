import 'dart:io';

void main(List<String> arguments) {

  /**
   * Vamos criar um programa que leia a idade de uma pessoa a partir de uma variável. Conforme a idade da
      pessoa, o programa deve exibir em tela a seguinte informação:
      ● Se a pessoa tiver até 12 anos: Criança
      ● Se a pessoa tiver entre 12 a 17 anos: Adolescente
      ● Se a pessoa tiver 18 anos ou mais: Adulto
      ● Se a pessoa tiver 60 anos ou mais: Idoso
   */

  print("Por favor informe sua idade!");
  String? input = stdin.readLineSync();
  int idade = int.parse(input!);
  verificaidade(idade);
}

void verificaidade(int idade) {
  if (idade <= 12) {
    print("Criança");
  } else if (idade > 12 && idade <= 17) {
    print("Adolecente");
  } else if (idade >= 18 && idade < 60) {
    print("Adulto");
  } else if (idade > 60) {
    print("Idoso!");
  }
}
