import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/auth_failures.dart';
import 'package:firebase_todo/domain/auth/user.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Stream<Option<FirebaseUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
