

import 'package:firebase_auth/firebase_auth.dart';

import '../either/either.dart';
import '../failures/http_request_failure.dart';
import '../models/user/user.dart';

typedef GetUserFuture = Future<Either<HttpRequestFailure,UserModel>>;


abstract class UserAuthRepository {
  GetUserFuture signInWithEmailAndPassword(String email, String password);
  GetUserFuture createUserWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<bool> isSignedIn();
  User? getUser();
}