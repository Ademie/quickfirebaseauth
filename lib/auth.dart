import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  // init firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // create a user from firebase auth
  User? get currentUser => _firebaseAuth.currentUser;

  // listen to auth changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // create user
  Future<void> register(
      {required String email, required String password}) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  // login user
  Future<void> login({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }


// Log out
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
