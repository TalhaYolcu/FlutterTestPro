import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

  Future signUp(String email,String password) async {
    String mail=email;
    String passw=password;
    var user=await _auth.createUserWithEmailAndPassword(email: mail, password: passw);
    await _firestore
        .collection("Person").
    doc(user.user?.uid).
    set({
      'password' : passw,
      'email' : mail
    });
    return user.user;
  }

  Future signIn(String email,String password) async {
    var user=await _auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;


  }
}