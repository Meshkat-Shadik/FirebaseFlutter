import 'package:firebase_todo/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_todo/domain/notes/value_objectes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorField extends StatelessWidget {
  const ColorField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (p, c) => p.note.color != c.note.color,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final itemColor = NoteColor.predefinedColors[index];
              return RawMaterialButton(
                elevation: 6,
                onPressed: () {
                  BlocProvider.of<NoteFormBloc>(context)
                      .add(NoteFormEvent.colorChanged(itemColor));
                },
                constraints: const BoxConstraints.tightFor(
                  width: 60,
                  height: 60,
                ),
                shape: CircleBorder(
                    side: state.note.color.value.fold(
                  (l) => BorderSide.none,
                  (color) => color == itemColor
                      ? const BorderSide(width: 1.5)
                      : BorderSide.none,
                )
                    //  BorderSide(color: Colors.black, width: 1.5),
                    ),
                fillColor: itemColor,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            itemCount: NoteColor.predefinedColors.length,
          ),
        );
      },
    );
  }
}
