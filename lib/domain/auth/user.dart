import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class AsUser with _$AsUser {
  const factory AsUser({
    required UniqueId id,
  }) = _AsUser;
}
