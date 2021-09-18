import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:firebase_todo/domain/core/core.dart';

import 'package:firebase_todo/domain/notes/todo_item.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required ListThree<TodoItem> todos,
  }) = _Note;
  const Note._();

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: ListThree(emptyList()),
      );

  //check all of the properties are valid
  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen<Unit>(todos.failureOrUnit)
        .andThen<Unit>(
          todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              //checking atleast 1 element. if not then none if yes then it's valid
              .fold(() => right(unit), (l) => left(l as ValueFailure<String>)),
        )
        .map((r) => null)
        .fold((f) => some(f as ValueFailure<String>), (r) => none());
  }
}
//why not body.value like the todo_item entity
//it's beacuse we are checking all the vobj serially
//and we only extract the failure, that's why we create
//an additional property to the value_objects.dart(core)
//that only extracts the failure
