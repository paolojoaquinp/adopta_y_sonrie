

import 'package:adopta_y_sonrie/app/domain/either/either.dart';
import 'package:adopta_y_sonrie/app/domain/failures/http_request_failure.dart';
import 'package:adopta_y_sonrie/app/domain/repositories/user_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/models/user/user.dart';

class UserAuthRepositoryImpl implements UserAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  @override
  GetUserFuture createUserWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserModel(id: userCredential.user!.uid, email: userCredential.user!.email);
      return Either.right(user);
    } on FirebaseAuthException catch (e) {
      return Either.left(HttpRequestFailure.badRequest());
    }
  }

  @override
  User? getUser() {
    final user = _firebaseAuth.currentUser;
    return user;
  }

  @override
  Future<bool> isSignedIn() async {
    final user = _firebaseAuth.currentUser;
    return user != null;
  }

  @override
  GetUserFuture signInWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      final user = UserModel(id: userCredential.user!.uid, email: userCredential.user!.email);
      return Either.right(user);
    } on FirebaseAuthException catch (e) {
      return Either.left(HttpRequestFailure.badRequest());
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

}