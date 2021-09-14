import 'package:firebase_todo/domain/notes/note.dart';
import 'package:flutter/material.dart';

class ErrorNoteCard extends StatelessWidget {
  const ErrorNoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              'Invalid Note, Please contact support!',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              note.failureOption.fold(
                () => '',
                (a) => a.toString(),
              ),
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
