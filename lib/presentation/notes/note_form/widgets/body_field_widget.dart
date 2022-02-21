import 'package:firebase_todo/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BodyField extends HookWidget {
  const BodyField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        _textEditingController.text = state.note.body.getOrCrash();
      },
      buildWhen: (p, c) =>
          p.isEditing != c.isEditing || p.note.color != c.note.color,
      builder: (context, state) {
        final color =
            BlocProvider.of<NoteFormBloc>(context).state.note.color.value.fold(
          (_) {
            return null;
          },
          (color) => color,
        );

        return Padding(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            style: TextStyle(
              color:
                  color!.computeLuminance() > 0.5 ? Colors.black : Colors.white,
            ),
            decoration: InputDecoration(
              fillColor: color,
              filled: true,
              labelText: 'Note',
              counterText: '',
            ),
            controller: _textEditingController,
            maxLength: NoteBody.maxLength,
            maxLines: null,
            minLines: 5,
            onChanged: (value) => BlocProvider.of<NoteFormBloc>(context).add(
              NoteFormEvent.bodyPressed(value),
            ),
            validator: (_) => BlocProvider.of<NoteFormBloc>(context)
                .state
                .note
                .body
                .value
                .fold(
              (f) => f.maybeMap(
                empty: (f) => 'Can not be empty',
                exceedingLength: (f) => 'Exceeding length, max ${f.max}',
                orElse: () {
                  return null;
                },
              ),
              (r) {
                return null;
              },
            ),
          ),
        );
      },
    );
  }
}
