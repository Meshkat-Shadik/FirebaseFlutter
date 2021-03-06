import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_todo/domain/auth/i_auth_facade.dart';
import 'package:firebase_todo/domain/core/core.dart';
import 'package:firebase_todo/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
