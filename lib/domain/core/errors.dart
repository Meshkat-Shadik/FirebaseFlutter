import 'package:firebase_todo/domain/core/core.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);
  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point.';
    return Error.safeToString(
        '$explanation Terminating!!.\n failure was: $valueFailure');
  }
}

class NotAuthenticatedError extends Error {}
