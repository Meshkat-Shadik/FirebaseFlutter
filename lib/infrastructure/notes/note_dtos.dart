import 'dart:convert';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/domain/notes/todo_item.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

// To parse this JSON data, do
//
//     final noteDto = noteDtoFromJson(jsonString);

NoteDto noteDtoFromJson(String str) =>
    NoteDto.fromJson(json.decode(str) as Map<String, dynamic>);

String noteDtoToJson(NoteDto data) => json.encode(data.toJson());

@freezed
abstract class NoteDto implements _$NoteDto {
  const factory NoteDto({
    @JsonKey(ignore: true) String? id,
    @required String? body,
    @required int? color,
    @required List<TodoItemDto>? todos,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _NoteDto;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      body: note.body.getOrCrash(),
      color: note.color.getOrCrash().value,
      todos: note.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory NoteDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return NoteDto.fromJson(doc.data()!).copyWith(id: doc.id);
  }
  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  const NoteDto._();
  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id!),
      body: NoteBody(body!),
      color: NoteColor(Color(color!)),
      todos: ListThree(todos!.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const factory TodoItemDto({
    @required String? id,
    @required String? name,
    @required bool? done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash(),
        done: todoItem.done);
  }

  const TodoItemDto._();
  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id!),
      name: TodoName(name!),
      done: done!,
    );
  }
}


/*

//Todo Item
{
  "id":"123",
  "name":"todo1",
  "done":false,
}

//Note 
{

  "body":"abcd",
  "color":124,
  "todos":[
    {
  "id":"123",
  "name":"todo1",
  "done":false,
},
{
  "id":"123",
  "name":"todo1",
  "done":false,
}


  ]
}
















*/