// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TodosTearOff {
  const _$TodosTearOff();

// ignore: unused_element
  TodosState call(List<TodoEntity> todos, {@required bool loading}) {
    return TodosState(
      todos,
      loading: loading,
    );
  }
}

// ignore: unused_element
const $Todos = _$TodosTearOff();

mixin _$Todos {
  List<TodoEntity> get todos;
  bool get loading;

  $TodosCopyWith<Todos> get copyWith;
}

abstract class $TodosCopyWith<$Res> {
  factory $TodosCopyWith(Todos value, $Res Function(Todos) then) =
      _$TodosCopyWithImpl<$Res>;
  $Res call({List<TodoEntity> todos, bool loading});
}

class _$TodosCopyWithImpl<$Res> implements $TodosCopyWith<$Res> {
  _$TodosCopyWithImpl(this._value, this._then);

  final Todos _value;
  // ignore: unused_field
  final $Res Function(Todos) _then;

  @override
  $Res call({
    Object todos = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed ? _value.todos : todos as List<TodoEntity>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

abstract class $TodosStateCopyWith<$Res> implements $TodosCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TodoEntity> todos, bool loading});
}

class _$TodosStateCopyWithImpl<$Res> extends _$TodosCopyWithImpl<$Res>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(TodosState _value, $Res Function(TodosState) _then)
      : super(_value, (v) => _then(v as TodosState));

  @override
  TodosState get _value => super._value as TodosState;

  @override
  $Res call({
    Object todos = freezed,
    Object loading = freezed,
  }) {
    return _then(TodosState(
      todos == freezed ? _value.todos : todos as List<TodoEntity>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

class _$TodosState extends TodosState with DiagnosticableTreeMixin {
  _$TodosState(this.todos, {@required this.loading})
      : assert(todos != null),
        assert(loading != null),
        super._();

  @override
  final List<TodoEntity> todos;
  @override
  final bool loading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todos(todos: $todos, loading: $loading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todos'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('loading', loading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodosState &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todos) ^
      const DeepCollectionEquality().hash(loading);

  @override
  $TodosStateCopyWith<TodosState> get copyWith =>
      _$TodosStateCopyWithImpl<TodosState>(this, _$identity);
}

abstract class TodosState extends Todos {
  TodosState._() : super._();
  factory TodosState(List<TodoEntity> todos, {@required bool loading}) =
      _$TodosState;

  @override
  List<TodoEntity> get todos;
  @override
  bool get loading;
  @override
  $TodosStateCopyWith<TodosState> get copyWith;
}
