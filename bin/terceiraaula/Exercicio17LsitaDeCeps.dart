void main() {
  /**
   * Em uma lista de CEPs, vamos criar um método que busca um CEP na lista e o remove. Caso o CEP não
   * exista na lista, gere uma exceção.
   * Porém, o usuário quer que, após executar a rotina de exclusão, a lista de CEPs seja exibida no console,
   * mesmo que uma exceção ocorra.
   */
  List<String> listaCEPs = ['12345-678', '98765-432', '54321-876', '87654-321'];

  try {
    removerCEP(listaCEPs, '38765-432');
    print('CEP removido com sucesso.');
  } catch (e) {
    print('Erro: ${e.toString()}');
  }

  // Exibir a lista de CEPs, mesmo que uma exceção ocorra
  print('Lista de CEPs:');
  listaCEPs.forEach((cep) => print(cep));
}

void removerCEP(List<String> listaCEPs, String cep) {
  if (!listaCEPs.contains(cep)) {
    throw Exception('CEP não encontrado na lista.');
  }

  listaCEPs.remove(cep);
}