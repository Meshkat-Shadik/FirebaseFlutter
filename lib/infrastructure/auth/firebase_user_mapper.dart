import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_todo/domain/auth/user.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  AsUser toDomain() {
    return AsUser(id: UniqueId.fromUniqueString(uid));
  }
}
