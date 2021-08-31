import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class FirebaseUser with _$FirebaseUser {
  const factory FirebaseUser({
    required UniqueId id,
  }) = _FirebaseUser;
}
