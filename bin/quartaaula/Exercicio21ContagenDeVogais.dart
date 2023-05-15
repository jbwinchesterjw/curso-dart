Map<String, int> contarVogais(String texto) {
  Map<String, int> resultado = {
    'A': 0,
    'E': 0,
    'I': 0,
    'O': 0,
    'U': 0,
  };

  String vogais = 'AEIOU';

  for (int i = 0; i < texto.length; i++) {
    String caractere = texto[i].toUpperCase();
    if (vogais.contains(caractere)) {
      resultado[caractere] ++;
    }
  }

  return resultado;
}

void main() {
  String texto = 'Viver é a coisa mais rara do mundo. A maioria das pessoas apenas existe.';

  Map<String, int> vogaisContagem = contarVogais(texto);

  print('Contagem de vogais:');
  vogaisContagem.forEach((vogal, quantidade) {
    print('$vogal: $quantidade');
  });
}
