import 'dart:math';
void main() {
  /**
   * Para testarmos a criação de exceções personalizadas, vamos criar uma exceção que é gerada sempre que
   * um número par é gerado randomicamente.
   * Após criar o tipo de exceção, no método main, gere um valor aleatório, caso esse valor seja par.
   * Realize também o tratamento da exceção, para que caso a exceção gerada seja do tipo da exceção
   * personalizada, a exceção não seja disparada para o usuário, somente a mensagem seja exibida no console.
   */
  try {
    int numero = gerarNumeroAleatorio();
    print('Número gerado: $numero');

    if (numero % 2 == 0) {
      throw NumeroParException();
    }
  } on NumeroParException catch (e) {
    print('Erro: ${e.toString()}');
  }
}

class NumeroParException implements Exception {
  String toString() => 'Número par gerado!';
}

int gerarNumeroAleatorio() {
  Random random = Random();
  return random.nextInt(20);
}
