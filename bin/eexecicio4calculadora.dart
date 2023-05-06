import 'dart:io';

void main(List<String> arguments) {
  print("Informe o 1° numero!");
  String? n1 = stdin.readLineSync();
  int numero1 = int.parse(n1!);
  print("Informe o 2° numero!");
  String? n2 = stdin.readLineSync();
  int numero2 = int.parse(n2!);
  print("Operação");
  String? operacao = stdin.readLineSync();
  switch (operacao) {
    case "+":
      print("Soma ${numero1 + numero2}");
      break;
    case "-":
      print("Subtração ${numero1 - numero2}");
      break;
    case "*":
      print("Multiplicação ${numero1 * numero2}");
      break;
    case "/":
      print("Divisão ${numero1 / numero2}");
      break;
  }
}
