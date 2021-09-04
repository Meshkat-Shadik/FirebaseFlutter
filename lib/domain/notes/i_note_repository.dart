import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/domain/notes/note_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  //watch notes
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  //watch uncompleted notes
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  //CUD
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
