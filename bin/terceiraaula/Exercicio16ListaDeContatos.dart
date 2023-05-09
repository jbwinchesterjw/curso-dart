void main() {
  /**
   * Vamos criar uma lista de contatos. Todos os contatos serão armazenados dentro de uma lista de maps,
   * guardando o nome e o telefone do contato cadastrado.
   * Os campos de nome e telefone são obrigatórios, caso algum deles não tenha sido preenchido, uma
   * exceção deve ser disparada. Ex: O campo nome é obrigatório. O campo telefone é obrigatório.
   * Você deverá preparar a rotina principal, para que, caso ocorra alguma exceção, a mensagem de erro seja
   * tratada e exibida de maneira amigável ao usuário.
   * Ex:
   * Erro ao cadastrar um novo contato: O campo nome é obrigatório.
   */
  List<Map<String, String>> listaContatos = [];

  try {
    cadastrarContato(listaContatos, 'John Doe', '123456789');
    cadastrarContato(listaContatos, '', '987654321');
  } catch (e) {
    print('Erro ao cadastrar um novo contato: ${e.toString()}');
  }

  // Exibir a lista de contatos
  print('Lista de Contatos:');
  listaContatos.forEach((contato) {
    print('Nome: ${contato['nome']}, Telefone: ${contato['telefone']}');
  });
}

void cadastrarContato(List<Map<String, String>> listaContatos, String nome, String telefone) {
  if (nome.isEmpty) {
    throw Exception('O campo nome é obrigatório.');
  }

  if (telefone.isEmpty) {
    throw Exception('O campo telefone é obrigatório.');
  }

  listaContatos.add({'nome': nome, 'telefone': telefone});
}