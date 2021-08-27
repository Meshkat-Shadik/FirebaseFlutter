import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/core.dart';
import 'package:firebase_todo/domain/core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress({String? email}) {
    return EmailAddress._(validateEmailAddress(email: email));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password({String? password}) {
    return Password._(validatePassword(password: password));
  }
  const Password._(this.value);
}
