import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/notes/i_note_repository.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/domain/notes/note_failure.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:firebase_todo/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<_Initialized>(_initializedMethod);
    on<_BodyPressed>(_bodyPressedMethod);
    on<_ColorChanged>(_colorChangedMethod);
    on<_TodosChanged>(_todoChangedMethod);
    on<_Saved>(_savedMethod);
  }

  Future<void> _initializedMethod(
    _Initialized event,
    Emitter<NoteFormState> emit,
  ) async {
    emit(
      event.initialNoteOption.fold(
        () => state, //no change
        (initialNote) => state.copyWith(
          note: initialNote,
          isEditing: true,
        ),
      ),
    );
  }

  Future<void> _bodyPressedMethod(
    _BodyPressed event,
    Emitter<NoteFormState> emit,
  ) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          body: NoteBody(event.bodyStr),
        ),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _colorChangedMethod(
    _ColorChanged event,
    Emitter<NoteFormState> emit,
  ) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(color: NoteColor(event.color)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _todoChangedMethod(
    _TodosChanged event,
    Emitter<NoteFormState> emit,
  ) async {
    emit(
      state.copyWith(
        note: state.note.copyWith(
          todos:
              ListThree(event.todos.map((primitive) => primitive.toDomain())),
        ),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _savedMethod(_Saved event, Emitter<NoteFormState> emit) async {
    Either<NoteFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ),
    );

    if (state.note.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
    }
    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessages: AutovalidateMode.always,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
//   @override
//   Stream<NoteFormState> mapEventToState(
//     NoteFormEvent event,
//   ) async* {
//     yield* event.map(
//       initialized: (e) async* {
//         yield e.initialNoteOption.fold(
//           () => state, //no change
//           (initialNote) => state.copyWith(
//             note: initialNote,
//             isEditing: true,
//           ),
//         );
//       },
//       bodyPressed: (e) async* {
//         yield state.copyWith(
//           note: state.note.copyWith(
//             body: NoteBody(e.bodyStr),
//           ),
//           saveFailureOrSuccessOption: none(),
//         );
//       },
//       colorChanged: (e) async* {
//         yield state.copyWith(
//           note: state.note.copyWith(color: NoteColor(e.color)),
//           saveFailureOrSuccessOption: none(),
//         );
//       },
//       todosChanged: (e) async* {
//         yield state.copyWith(
//           note: state.note.copyWith(
//             todos: ListThree(e.todos.map((primitive) => primitive.toDomain())),
//           ),
//           saveFailureOrSuccessOption: none(),
//         );
//       },
//       saved: (e) async* {
//         //  print(state.note.failureOption);

//         Either<NoteFailure, Unit>? failureOrSuccess;

//         yield state.copyWith(
//           isSaving: true,
//           saveFailureOrSuccessOption: none(),
//         );

//         if (state.note.failureOption.isNone()) {
//           failureOrSuccess = state.isEditing
//               ? await _noteRepository.update(state.note)
//               : await _noteRepository.create(state.note);
//         }

//         yield state.copyWith(
//             isSaving: false,
//             showErrorMessages: AutovalidateMode.always,
//             saveFailureOrSuccessOption: optionOf(failureOrSuccess));
//       },
//     );
//   }
// }
