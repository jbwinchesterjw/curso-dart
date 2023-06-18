/*
Crie uma classe de ContaCorrente, a classe deve implementar as seguintes funcionalidades:
● Armazenar o saldo atual, que deve ser privado;
● Possuir os métodos de depósito e saque;
● Os métodos de saque e depósito devem receber o valor a ser sacado ou a ser depositado;
● Criar um método também para exibir o saldo atual;
*/

class ContaCorrente {
  double _saldoAtual = 0;
  double valor = 0;

  void depositar(valor) {
    if (valor > 0) {
      _saldoAtual += valor;
      print("Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
    } else {
      throw("Valor inválido. O valor deve ser maior que zero.");
    }
  }

  void sacar(valor) {
    if (valor > 0) {
      if (_saldoAtual >= valor) {
        _saldoAtual -= valor;
        print("Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
      } else {
        throw("Saldo insuficiente para saque.");
      }
    } else {
      throw("Valor inválido. O valor deve ser maior que zero.");
    }
  }

  void exibirSaldo() {
    print("Saldo atual: R\$${_saldoAtual.toStringAsFixed(2)}");
  }
}


void main() {
  // Criar uma instância da conta corrente
  var conta = ContaCorrente();

  // Exibir saldo atual (deve ser zero no início)
  conta.exibirSaldo();

  // Depositar R$100.50
  conta.depositar(100.50);

  // Exibir saldo atual após o depósito
  conta.exibirSaldo();

  // Sacar R$50.25
  conta.sacar(50.25);

  // Exibir saldo atual após o saque
  conta.exibirSaldo();
}
