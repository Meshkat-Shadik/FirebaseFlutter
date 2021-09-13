# Domain Driven Design (DDD) with Firebase

## Class 20 : Placeholder Note Cards

_problems i've faced_

1.  Missing yield\* at stream functions in note_repositories.dart file
2.  Changing from

    ```dart
            'todo':todo
    ```

    to

    ```dart
     'todos': instance.todos?.map((e) => e.toJson()).toList()
    ```

    todo_dtos.g.dart

3.  The reason was that I has only 1 todos in my note, and I manually set this todo as a map instead of list of map. So , make sure your todos field is first an list and then enter each todo element as a map. That should solve the problem
