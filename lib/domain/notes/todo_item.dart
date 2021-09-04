import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:firebase_todo/domain/core/core.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const factory TodoItem({
    required UniqueId id,
    required TodoName name,
    required bool done,
  }) = _TodoItem;

  const TodoItem._();

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        name: TodoName(''),
        done: false,
      );

//check only name is an error or not
  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold(some, (r) => none());
    // (f) => some(f)   shortend to some
  }
}
