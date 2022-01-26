import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/notes/i_note_repository.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;
  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _noteStreamSubscription;

  // ignore: sort_constructors_first
  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) async {
      await _noteStreamSubscription?.cancel();
      emit(const NoteWatcherState.loadInProgress());
      _noteStreamSubscription =
          _noteRepository.watchAll().listen((failureOrNotes) {
        return add(NoteWatcherEvent.noteReceived(failureOrNotes));
      });
    });

    on<_WatchUncompletedstarted>((event, emit) async {
      await _noteStreamSubscription?.cancel();
      emit(const NoteWatcherState.loadInProgress());

      _noteStreamSubscription = _noteRepository.watchUncompleted().listen(
          (failureOrNotes) =>
              add(NoteWatcherEvent.noteReceived(failureOrNotes)));
    });

    on<_NoteReceived>((event, emit) async {
      emit(event.failureOrNotes.fold(
        (l) => NoteWatcherState.loadFailure(l),
        (r) => NoteWatcherState.loadSucess(r),
      ));
    });
  }
}
//When one stream is switched from one to another process
//it's not working, because it's an infinite yield loop
//so we have to depend on another event which will work
//as a normal event
//for cancel and listen again we have to use StreamSubscription