import 'package:firebase_todo/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_todo/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:firebase_todo/presentation/notes/note_form/misc/build_context_x.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formTodos = state.note.todos.value.fold(
          (_) => listOf<TodoItemPrimitive>(),
          (todoItemList) => todoItemList.map(
            (_) => TodoItemPrimitive.fromDomain(_),
          ),
        );
      },
      buildWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            enabled: !state.note.todos.isFull,
            title: const Text('Add a todo'),
            leading: const Icon(Icons.add),
            onTap: () {
              context.formTodos =
                  context.formTodos.plusElement(TodoItemPrimitive.empty());
              BlocProvider.of<NoteFormBloc>(context).add(
                NoteFormEvent.todosChanged(context.formTodos),
              );
            },
          ),
        );
      },
    );
  }
}
