import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/notes/i_note_repository.dart';
import 'package:firebase_todo/infrastructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:firebase_todo/domain/notes/note_failure.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  NoteRepository(this._firestore);
  final FirebaseFirestore _firestore;

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    //users/{user.ID}/notes/{noteID}
    final userDoc = await _firestore.userDocument();
    userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((notes) => NoteDto.fromFirestore(notes).toDomain()),
        )
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(notes
              .where((note) =>
                  note.todos.getOrCrash().any((todoItem) => !todoItem.done))
              .toImmutableList()),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}