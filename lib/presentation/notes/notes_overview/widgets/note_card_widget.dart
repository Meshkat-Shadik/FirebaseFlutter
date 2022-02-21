import 'package:auto_route/auto_route.dart';
import 'package:firebase_todo/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_todo/application/theme_cubit/theme_cubit_cubit.dart';
import 'package:firebase_todo/domain/notes/note.dart';
import 'package:firebase_todo/domain/notes/todo_item.dart';
import 'package:firebase_todo/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);
  final Note note;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          context.router.push(NoteFormPageRoute(editedNote: note));
        },
        onLongPress: () {
          _showDeletionDialog(
            context,
            BlocProvider.of<NoteActorBloc>(context),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ...note.todos
                        .getOrCrash()
                        .map((todo) => TodoDisplay(todo: todo))
                        .iter,
                  ],
                )
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog<Widget>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected Note : '),
          content: Text(
            note.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            ElevatedButton(
              onPressed: () {
                noteActorBloc.add(NoteActorEvent.deleted(note));
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );
  }
}

class TodoDisplay extends StatelessWidget {
  const TodoDisplay({
    Key? key,
    required this.todo,
  }) : super(key: key);
  final TodoItem todo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (todo.done)
          const Icon(
            Icons.check_box,
            color: Colors.grey,
          ),
        if (!todo.done)
          const Icon(
            Icons.check_box_outline_blank,
            color: Colors.grey,
          ),
        Text(
          todo.name.getOrCrash(),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}




//note.todos.getOrCrash().map firstly
//can't work, include kt_collection library
//then all okay
