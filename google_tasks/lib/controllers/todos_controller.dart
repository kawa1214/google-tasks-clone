import 'package:state_notifier/state_notifier.dart';

import 'package:google_tasks/models/todos.dart';
import 'package:google_tasks/entitys/todo_entity.dart';
import 'package:google_tasks/repositories/todos_repository.dart';

class TodosController extends StateNotifier<Todos> with LocatorMixin {
  TodosController() : super(Todos([], loading: false));

  TodosRepository get todosRepository => read<TodosRepository>();

  Future<void> getStocks() async {
    try {
      List<TodoEntity> todos = await todosRepository.getTodos();
      state = state.copyWith(todos: todos);
    } catch (_) {
      print(_);
      state = state.copyWith(loading: false);
    }
  }
}
