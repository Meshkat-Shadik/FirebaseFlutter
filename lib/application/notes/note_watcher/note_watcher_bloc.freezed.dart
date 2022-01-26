// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteWatcherEventTearOff {
  const _$NoteWatcherEventTearOff();

  _WatchAllStarted watchAllstarted() {
    return const _WatchAllStarted();
  }

  _WatchUncompletedstarted watchUncompletedstarted() {
    return const _WatchUncompletedstarted();
  }

  _NoteReceived noteReceived(Either<NoteFailure, KtList<Note>> failureOrNotes) {
    return _NoteReceived(
      failureOrNotes,
    );
  }
}

/// @nodoc
const $NoteWatcherEvent = _$NoteWatcherEventTearOff();

/// @nodoc
mixin _$NoteWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
    required TResult Function() watchUncompletedstarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        noteReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
    required TResult Function(_WatchUncompletedstarted value)
        watchUncompletedstarted,
    required TResult Function(_NoteReceived value) noteReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherEventCopyWith<$Res> {
  factory $NoteWatcherEventCopyWith(
          NoteWatcherEvent value, $Res Function(NoteWatcherEvent) then) =
      _$NoteWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteWatcherEventCopyWithImpl<$Res>
    implements $NoteWatcherEventCopyWith<$Res> {
  _$NoteWatcherEventCopyWithImpl(this._value, this._then);

  final NoteWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchAllstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
    required TResult Function() watchUncompletedstarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        noteReceived,
  }) {
    return watchAllstarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
  }) {
    return watchAllstarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
    required TResult orElse(),
  }) {
    if (watchAllstarted != null) {
      return watchAllstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
    required TResult Function(_WatchUncompletedstarted value)
        watchUncompletedstarted,
    required TResult Function(_NoteReceived value) noteReceived,
  }) {
    return watchAllstarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
  }) {
    return watchAllstarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
    required TResult orElse(),
  }) {
    if (watchAllstarted != null) {
      return watchAllstarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements NoteWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUncompletedstartedCopyWith<$Res> {
  factory _$WatchUncompletedstartedCopyWith(_WatchUncompletedstarted value,
          $Res Function(_WatchUncompletedstarted) then) =
      __$WatchUncompletedstartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUncompletedstartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$WatchUncompletedstartedCopyWith<$Res> {
  __$WatchUncompletedstartedCopyWithImpl(_WatchUncompletedstarted _value,
      $Res Function(_WatchUncompletedstarted) _then)
      : super(_value, (v) => _then(v as _WatchUncompletedstarted));

  @override
  _WatchUncompletedstarted get _value =>
      super._value as _WatchUncompletedstarted;
}

/// @nodoc

class _$_WatchUncompletedstarted implements _WatchUncompletedstarted {
  const _$_WatchUncompletedstarted();

  @override
  String toString() {
    return 'NoteWatcherEvent.watchUncompletedstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUncompletedstarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
    required TResult Function() watchUncompletedstarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        noteReceived,
  }) {
    return watchUncompletedstarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
  }) {
    return watchUncompletedstarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedstarted != null) {
      return watchUncompletedstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
    required TResult Function(_WatchUncompletedstarted value)
        watchUncompletedstarted,
    required TResult Function(_NoteReceived value) noteReceived,
  }) {
    return watchUncompletedstarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
  }) {
    return watchUncompletedstarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
    required TResult orElse(),
  }) {
    if (watchUncompletedstarted != null) {
      return watchUncompletedstarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompletedstarted implements NoteWatcherEvent {
  const factory _WatchUncompletedstarted() = _$_WatchUncompletedstarted;
}

/// @nodoc
abstract class _$NoteReceivedCopyWith<$Res> {
  factory _$NoteReceivedCopyWith(
          _NoteReceived value, $Res Function(_NoteReceived) then) =
      __$NoteReceivedCopyWithImpl<$Res>;
  $Res call({Either<NoteFailure, KtList<Note>> failureOrNotes});
}

/// @nodoc
class __$NoteReceivedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$NoteReceivedCopyWith<$Res> {
  __$NoteReceivedCopyWithImpl(
      _NoteReceived _value, $Res Function(_NoteReceived) _then)
      : super(_value, (v) => _then(v as _NoteReceived));

  @override
  _NoteReceived get _value => super._value as _NoteReceived;

  @override
  $Res call({
    Object? failureOrNotes = freezed,
  }) {
    return _then(_NoteReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<NoteFailure, KtList<Note>>,
    ));
  }
}

/// @nodoc

class _$_NoteReceived implements _NoteReceived {
  const _$_NoteReceived(this.failureOrNotes);

  @override
  final Either<NoteFailure, KtList<Note>> failureOrNotes;

  @override
  String toString() {
    return 'NoteWatcherEvent.noteReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @JsonKey(ignore: true)
  @override
  _$NoteReceivedCopyWith<_NoteReceived> get copyWith =>
      __$NoteReceivedCopyWithImpl<_NoteReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
    required TResult Function() watchUncompletedstarted,
    required TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)
        noteReceived,
  }) {
    return noteReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
  }) {
    return noteReceived?.call(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    TResult Function()? watchUncompletedstarted,
    TResult Function(Either<NoteFailure, KtList<Note>> failureOrNotes)?
        noteReceived,
    required TResult orElse(),
  }) {
    if (noteReceived != null) {
      return noteReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
    required TResult Function(_WatchUncompletedstarted value)
        watchUncompletedstarted,
    required TResult Function(_NoteReceived value) noteReceived,
  }) {
    return noteReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
  }) {
    return noteReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    TResult Function(_WatchUncompletedstarted value)? watchUncompletedstarted,
    TResult Function(_NoteReceived value)? noteReceived,
    required TResult orElse(),
  }) {
    if (noteReceived != null) {
      return noteReceived(this);
    }
    return orElse();
  }
}

abstract class _NoteReceived implements NoteWatcherEvent {
  const factory _NoteReceived(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _$_NoteReceived;

  Either<NoteFailure, KtList<Note>> get failureOrNotes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NoteReceivedCopyWith<_NoteReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NoteWatcherStateTearOff {
  const _$NoteWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSucess loadSucess(KtList<Note> notes) {
    return _LoadSucess(
      notes,
    );
  }

  _LoadFailure loadFailure(NoteFailure noteFailure) {
    return _LoadFailure(
      noteFailure,
    );
  }
}

/// @nodoc
const $NoteWatcherState = _$NoteWatcherStateTearOff();

/// @nodoc
mixin _$NoteWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Note> notes) loadSucess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherStateCopyWith<$Res> {
  factory $NoteWatcherStateCopyWith(
          NoteWatcherState value, $Res Function(NoteWatcherState) then) =
      _$NoteWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteWatcherStateCopyWithImpl<$Res>
    implements $NoteWatcherStateCopyWith<$Res> {
  _$NoteWatcherStateCopyWithImpl(this._value, this._then);

  final NoteWatcherState _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Note> notes) loadSucess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'NoteWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Note> notes) loadSucess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements NoteWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSucessCopyWith<$Res> {
  factory _$LoadSucessCopyWith(
          _LoadSucess value, $Res Function(_LoadSucess) then) =
      __$LoadSucessCopyWithImpl<$Res>;
  $Res call({KtList<Note> notes});
}

/// @nodoc
class __$LoadSucessCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$LoadSucessCopyWith<$Res> {
  __$LoadSucessCopyWithImpl(
      _LoadSucess _value, $Res Function(_LoadSucess) _then)
      : super(_value, (v) => _then(v as _LoadSucess));

  @override
  _LoadSucess get _value => super._value as _LoadSucess;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_LoadSucess(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Note>,
    ));
  }
}

/// @nodoc

class _$_LoadSucess implements _LoadSucess {
  const _$_LoadSucess(this.notes);

  @override
  final KtList<Note> notes;

  @override
  String toString() {
    return 'NoteWatcherState.loadSucess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSucess &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  _$LoadSucessCopyWith<_LoadSucess> get copyWith =>
      __$LoadSucessCopyWithImpl<_LoadSucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Note> notes) loadSucess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loadSucess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loadSucess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(this);
    }
    return orElse();
  }
}

abstract class _LoadSucess implements NoteWatcherState {
  const factory _LoadSucess(KtList<Note> notes) = _$_LoadSucess;

  KtList<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSucessCopyWith<_LoadSucess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(_LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get noteFailure {
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.noteFailure);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteWatcherState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.noteFailure, noteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.noteFailure, noteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Note> notes) loadSucess,
    required TResult Function(NoteFailure noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
  }) {
    return loadFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Note> notes)? loadSucess,
    TResult Function(NoteFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NoteWatcherState {
  const factory _LoadFailure(NoteFailure noteFailure) = _$_LoadFailure;

  NoteFailure get noteFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
