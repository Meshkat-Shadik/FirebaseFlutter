import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/core.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold(
      (l) => throw UnexpectedValueError(l),
      id,
    ); //shorthand of (r) => r
  }

  //only extracts the failure
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value: $value';
}
