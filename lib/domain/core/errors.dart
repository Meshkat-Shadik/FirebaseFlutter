import 'package:firebase_todo/domain/core/core.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point.';
    return Error.safeToString(
        '$explanation Terminating!!.\n failure was: $valueFailure');
  }
}
