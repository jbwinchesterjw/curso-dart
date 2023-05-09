void main() {
  /**
   * No nosso primeiro exercício de exceções, vamos criar um mecanismo de conta corrente. No nosso método
   * main, vamos guardar o saldo atual da conta em uma variável.
   * Sempre que quisermos efetuar um depósito ou um saque, utilizaremos uma função, que receberá o saldo
   * atual e o valor que se deseja sacar ou depositar. Essas funções retornarão o novo saldo atual da conta.
   * Porém, não deverá ser possível sacar um valor maior que o saldo disponível, nem tentar sacar ou depositar
   * um valor zerado ou negativo.
   * Nesses casos, uma exceção deve ser gerada.
   */
  double saldo = 1000.0;

  try {
    saldo = realizarDeposito(saldo, 500.0);
    print('Depósito efetuado. Saldo atual: $saldo');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }

  try {
    saldo = realizarSaque(saldo, 2000.0);
    print('Saque efetuado. Saldo atual: $saldo');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }

  try {
    saldo = realizarSaque(saldo, 500.0);
    print('Saque efetuado. Saldo atual: $saldo');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }

  try {
    saldo = realizarDeposito(saldo, -100.0);
    print('Depósito efetuado. Saldo atual: $saldo');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}

double realizarDeposito(double saldoAtual, double valor) {
  if (valor <= 0) {
    throw Exception('Valor de depósito inválido. O valor deve ser maior que zero.');
  }

  return saldoAtual + valor;
}

double realizarSaque(double saldoAtual, double valor) {
  if (valor <= 0) {
    throw Exception('Valor de saque inválido. O valor deve ser maior que zero.');
  }

  if (valor > saldoAtual) {
    throw Exception('Saldo insuficiente para efetuar o saque.');
  }

  return saldoAtual - valor;
}