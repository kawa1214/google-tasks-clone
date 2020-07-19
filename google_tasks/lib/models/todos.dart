import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:google_tasks/entitys/todo_entity.dart';

part 'todos.freezed.dart';

@freezed
abstract class Todos with _$Todos {
  Todos._();
  factory Todos(
    List<TodoEntity> todos, {
    @required bool loading,
  }) = TodosState;

  TodoEntity todoById(String id) {
    return todos.firstWhere((it) => it.id == id, orElse: () => null);
  }
}
