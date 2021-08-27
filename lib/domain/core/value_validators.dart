import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/core.dart';

Either<ValueFailure<String>, String> validateEmailAddress({
  String? email,
}) {
  const emailRegex = r'''^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$''';
  if (RegExp(emailRegex).hasMatch(email!)) {
    return right(email);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: email));
  }
}

Either<ValueFailure<String>, String> validatePassword({
  String? password,
}) {
  if (password!.length >= 6) {
    return right(password);
  } else {
    return left(ValueFailure.shortPassword(failedValue: password));
  }
}
