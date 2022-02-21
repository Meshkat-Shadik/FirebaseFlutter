import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_todo/application/theme_cubit/theme_cubit_cubit.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/injection.dart';
import 'package:firebase_todo/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:firebase_todo/presentation/notes/note_form/widgets/add_todo_tile.dart';
import 'package:firebase_todo/presentation/notes/note_form/widgets/body_field_widget.dart';
import 'package:firebase_todo/presentation/notes/note_form/widgets/color_field_widget.dart';
import 'package:firebase_todo/presentation/notes/note_form/widgets/todo_list_widget.dart';
import 'package:firebase_todo/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNote;
  const NoteFormPage({
    Key? key,
    required this.editedNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(
          NoteFormEvent.initialized(optionOf(editedNote)),
        ),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (a) {
              a.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      unexpected: (_) =>
                          'Unexpected error occured, please contact support.',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) =>
                          "Couldn't update the note. Was it deleted from another device?",
                    ),
                  ).show(context);
                },
                (r) {
                  context.router.popUntil(
                    (route) =>
                        route.settings.name == NotesOverviewPageRoute.name,
                  );
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          //print('isSaving value : ${state.isSaving}');
          return Stack(
            children: <Widget>[
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingInProgressOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircularProgressIndicator(),
              ),
              const SizedBox(height: 20),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white,
                      fontSize: 24,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit a note' : 'Create a note');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<NoteFormBloc>(context)
                  .add(const NoteFormEvent.saved());
            },
            icon: const Icon(Icons.check),
          ),
          BlocBuilder<ThemeCubitCubit, bool>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  BlocProvider.of<ThemeCubitCubit>(context).toggleTheme(
                    value: !state,
                  );
                },
                icon: Icon(
                  state ? Icons.nightlight_outlined : Icons.brightness_7,
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormTodos(),
            child: Form(
              autovalidateMode: state.showErrorMessages,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BodyField(),
                    ColorField(),
                    TodoList(),
                    AddTodoTile(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
