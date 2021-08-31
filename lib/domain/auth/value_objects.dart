import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/core.dart';
import 'package:firebase_todo/domain/core/value_objects.dart';
import 'package:uuid/uuid.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress({String? email}) {
    return EmailAddress._(validateEmailAddress(email: email));
  }
  const EmailAddress._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  factory Password({String? password}) {
    return Password._(validatePassword(password: password));
  }
  const Password._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

class UniqueId extends ValueObject<String> {
  @override
  factory UniqueId() {
    return UniqueId._(
      // ignore: prefer_const_constructors
      right(Uuid().v1()),
    );
  }
  const UniqueId._(this.value);
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  @override
  final Either<ValueFailure<String>, String> value;
}
