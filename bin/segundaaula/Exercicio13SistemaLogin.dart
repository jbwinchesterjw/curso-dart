import 'dart:io';

void main() {
  /**
   * Vamos criar um sistema de login. Você deverá guardar uma lista de usuários e senhas. Crie uma rotina de
   * cadastro de usuário e uma rotina de login, que retornará verdadeiro se o login foi bem sucedido.
   */
  List<User> users = [];
  bool isLoggedIn = false;

  while (!isLoggedIn) {
    print('Selecione uma opção:');
    print('1. Criar nova conta');
    print('2. Fazer login');
    print('3. Sair');

    String option = stdin.readLineSync() ?? '';

    switch (option) {
      case '1':
        signUp(users);
        break;
      case '2':
        isLoggedIn = login(users);
        break;
      case '3':
        print('Saindo...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }

  print('Login bem-sucedido!');
  // O código aqui representa o que acontecerá após o login bem-sucedido.
}

class User {
  String username;
  String password;

  User(this.username, this.password);
}

void signUp(List<User> users) {
  print('Digite o nome de usuário:');
  String username = stdin.readLineSync() ?? '';

  // Verificar se o nome de usuário já existe
  if (users.any((user) => user.username == username)) {
    print('O nome de usuário já existe. Tente novamente.');
    return;
  }

  print('Digite a senha:');
  String password = stdin.readLineSync() ?? '';

  users.add(User(username, password));
  print('Conta criada com sucesso!');
}

bool login(List<User> users) {
  print('Digite o nome de usuário:');
  String username = stdin.readLineSync() ?? '';

  print('Digite a senha:');
  String password = stdin.readLineSync() ?? '';

  // Verificar se o usuário e a senha correspondem
  bool isAuthenticated = users.any((user) =>
  user.username == username && user.password == password);

  if (isAuthenticated) {
    return true;
  } else {
    print('Nome de usuário ou senha incorretos. Tente novamente.');
    return false;
  }
}