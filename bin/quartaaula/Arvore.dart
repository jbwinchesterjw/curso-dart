String TreeConstructor(List<String> strArr) {
  // Cria um mapa para armazenar os nós pais e o número de filhos
  Map<int, int> parentCounts = {};

  for (String pair in strArr) {
    // Extrai os números do par
    int child = int.parse(pair.substring(pair.indexOf('(') + 1, pair.indexOf(',')));
    int parent = int.parse(pair.substring(pair.indexOf(',') + 1, pair.indexOf(')')));

    // Incrementa o contador de filhos do pai
    parentCounts[parent] = (parentCounts[parent] ?? 0) + 1;

    // Verifica se o pai já tem mais de dois filhos
    if (parentCounts[parent]! > 2) {
      return 'false'; // Mais de dois filhos, não é uma árvore binária adequada
    }
  }

  return 'true'; // Árvore binária adequada pode ser formada
}

void main() {
  // Exemplo de uso
  print(TreeConstructor(["(1,2)", "(2,4)", "(7,2)"])); // true
  print(TreeConstructor(["(1,2)", "(2,4)", "(7,2)", "(7,1)"])); // false
}