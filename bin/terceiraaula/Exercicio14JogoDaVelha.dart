import 'dart:io';

void main() {
  List<List<String>> tabuleiro = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];

  String jogadorAtual = "X";

  exibirTabuleiro(tabuleiro);

  while (true) {
    print("É a vez do jogador $jogadorAtual");

    stdout.write("Digite o número da linha (0 a 2): ");
    int linha = int.parse(stdin.readLineSync()!);

    stdout.write("Digite o número da coluna (0 a 2): ");
    int coluna = int.parse(stdin.readLineSync()!);

    if (tabuleiro[linha][coluna] == " ") {
      tabuleiro[linha][coluna] = jogadorAtual;
    } else {
      print("Posição inválida. Tente novamente.");
      continue;
    }

    exibirTabuleiro(tabuleiro);

    if (verificarVencedor(tabuleiro, jogadorAtual)) {
      print("O jogador $jogadorAtual venceu!");
      break;
    }

    if (!verificarJogadasDisponiveis(tabuleiro)) {
      print("Empate! Não há mais jogadas disponíveis.");
      break;
    }

    jogadorAtual = jogadorAtual == "X" ? "O" : "X";
  }
}

void exibirTabuleiro(List<List<String>> tabuleiro) {
  for (int i = 0; i < tabuleiro.length; i++) {
    print(tabuleiro[i].join(" | "));
    if (i < tabuleiro.length - 1) {
      print("-" * 9);
    }
  }
  print("\n");
}

bool verificarVencedor(List<List<String>> tabuleiro, String jogador) {
  // Verificar linhas
  for (int i = 0; i < tabuleiro.length; i++) {
    if (tabuleiro[i][0] == tabuleiro[i][1] &&
        tabuleiro[i][1] == tabuleiro[i][2] &&
        tabuleiro[i][0] == jogador) {
      return true;
    }
  }

  // Verificar colunas
  for (int j = 0; j < tabuleiro[0].length; j++) {
    if (tabuleiro[0][j] == tabuleiro[1][j] &&
        tabuleiro[1][j] == tabuleiro[2][j] &&
        tabuleiro[0][j] == jogador) {
      return true;
    }
  }

  // Verificar diagonais
  if ((tabuleiro[0][0] == tabuleiro[1][1] &&
      tabuleiro[1][1] == tabuleiro[2][2] &&
      tabuleiro[0][0] == jogador) ||
      (tabuleiro[0][2] == tabuleiro[1][1] &&
          tabuleiro[1][1] == tabuleiro[2][0] &&
          tabuleiro[0][2] == jogador)) {
    return true;
  }

  return false;
}

bool verificarJogadasDisponiveis(List<List<String>> tabuleiro) {
  for (List<String> linha in tabuleiro) {
    if (linha.contains(" ")) {
      return true;
    }
  }
  return false;
}