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

3.  The reason was that I has only 1 todos in my note, and I manually set this todo as a map instead of list of map. So , make sure your todos field is first an list and then enter each todo element as a map. That should solve the problem.

## class 24: Note Form Page

When I pressed **update** (blank screen checkbox) I've got an error says

```dart
Unhandled Exception: Unhandled error Invalid argument: Instance of '_$_TodoItemDto' occurred in Instance of 'NoteFormBloc'.
```

and When I pressed **create** (Blank screen checkbox access from floating action button) it says

```dart
Unhandled Exception: Unhandled error type 'Right<ValueFailure<dynamic>, Unit>' is not a subtype of type 'Either<ValueFailure<String>, Unit>' of 'next' occurred in Instance of 'NoteFormBloc'.
```

### :::::::::..... Edited ......:::::::::::

(1) Update error solved:
in note_dtos.g.dart , we have to iterate each todos , by default code generation unable to make that. So, by hand we have to change

```dart
'todos' : instance.todos    ->      'todos': instance.todos?.map((e) => e?.toJson())?.toList(),
```

(2) Create error solved:
In domain/core/value_objects.dart ,

instead of writting

```dart Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
  return value.fold(
    (l) => left(l),
    (r) => right(unit),
  );
}
```

replace it with 'Left' and "Right' . Make sure it is capital..

```dart
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => Left(l),
      (r) => Right(unit),
    );
  }
```

**Left** returns a result of **Left<ValueFailure<dynamic>, Unit>** which is already patched value.

But, **left** returns a result of whole **Either<L, R> left<L, R>(L l)**
type that means we have to patch the value by hand. And when it is dynamic value it can't work the way we want.

For this, we have to convert **Left** from **left** and vice-versa.
