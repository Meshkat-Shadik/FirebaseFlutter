part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllstarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedstarted() =
      _WatchUncompletedstarted;
  const factory NoteWatcherEvent.noteReceived(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _NoteReceived;
}

