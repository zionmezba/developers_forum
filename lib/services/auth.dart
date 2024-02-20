import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      
      return userCredential;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in with mail and pass
  //sign up with mail and pass
  //sign out
}
