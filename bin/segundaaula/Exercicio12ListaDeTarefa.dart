import 'dart:math';
import 'dart:io';
void main() {
  List<Tarefa> listaTarefas = [];

  while (true) {
    print('Selecione uma opção:');
    print('1. Adicionar tarefa');
    print('2. Concluir tarefa');
    print('3. Listar tarefas concluídas');
    print('4. Listar todas as tarefas');
    print('5. Sair');

    String option = stdin.readLineSync() ?? '';

    switch (option) {
      case '1':
        addTarefa(listaTarefas);
        break;
      case '2':
        concluirTarefa(listaTarefas);
        break;
      case '3':
        listarTarefasConcluidas(listaTarefas);
        break;
      case '4':
        listarTodasAsTarefas(listaTarefas);
        break;
      case '5':
        print('Saindo...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}

class Tarefa {
  String descricao;
  bool concluida;

  Tarefa(this.descricao, this.concluida);
}

void addTarefa(List<Tarefa> listaTarefas) {
  print('Digite a descrição da tarefa:');
  String descricao = stdin.readLineSync() ?? '';

  listaTarefas.add(Tarefa(descricao, false));
  print('Tarefa adicionada com sucesso!');
}

void concluirTarefa(List<Tarefa> listaTarefas) {
  print('Digite o número da tarefa que deseja concluir:');
  int? numeroTarefa = int.tryParse(stdin.readLineSync() ?? '');

  if (numeroTarefa != null && numeroTarefa >= 0 && numeroTarefa < listaTarefas.length) {
    listaTarefas[numeroTarefa].concluida = true;
    print('Tarefa concluída!');
  } else {
    print('Número de tarefa inválido. Tente novamente.');
  }
}

void listarTarefasConcluidas(List<Tarefa> listaTarefas) {
  print('Tarefas concluídas:');
  for (var i = 0; i < listaTarefas.length; i++) {
    if (listaTarefas[i].concluida) {
      print('$i: ${listaTarefas[i].descricao}');
    }
  }
}

void listarTodasAsTarefas(List<Tarefa> listaTarefas) {
  print('Todas as tarefas:');
  for (var i = 0; i < listaTarefas.length; i++) {
    print('$i: ${listaTarefas[i].descricao} - ${listaTarefas[i].concluida ? "Concluída" : "Pendente"}');
  }
}