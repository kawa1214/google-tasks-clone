import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_tasks/entitys/todo_entity.dart';

class TodosRepository {
  Future<List<TodoEntity>> getTodos() async {
    final todoDocuments =
        await Firestore.instance.collection('todos').getDocuments();

    List<TodoEntity> todos = todoDocuments.documents
        .map((doc) => TodoEntity.fromDocumentSnapshot(doc))
        .toList();

    return todos;
  }
}
