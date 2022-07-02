import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  // static void checkSignedIn(BuildContext context) {
  //   Authentication.initializeFirebase();
  //   //if logged in
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if (user != null) {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  //   }
  // }

  // static Future<FirebaseApp> initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  // static Future<void> signinWithGoogle({required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   GoogleSignIn googleSignIn = GoogleSignIn();
  //
  //   final GoogleSignInAccount? googleSignInAccount =
  //       await googleSignIn.signIn();
  //
  //   //if (googleSignInAccount != null) {
  //   final GoogleSignInAuthentication googleSignInAuthentication =
  //       await googleSignInAccount!.authentication;
  //
  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication.accessToken,
  //       idToken: googleSignInAuthentication.idToken);
  //
  //   try {
  //     final UserCredential userCredential =
  //         await auth.signInWithCredential(credential);
  //
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => HomePage()));
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'account-exists-with-different-credential') {
  //       //handle error
  //       print('account exist with different credential');
  //     } else if (e.code == 'invalid-credential') {
  //       //handle error
  //       print('invalid credential');
  //     }
  //   } catch (e) {
  //     //handle error
  //     print('something else');
  //   }
  // }

  static Future<void> signOut({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<User?> signUp(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      // await user!.updateDisplayName(name);
      // await user?.reload();
      // user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return user;
    // auth
    //     .createUserWithEmailAndPassword(email: email, password: password)
    //     .then((_) {
    //   // Navigator.of(context).pushReplacement(
    //   //     MaterialPageRoute(builder: (context) => VerifyScreen()));
    //   debugPrint('on verify screen');
    // });
  }

  static Future<User?> signIn(String email, String password) async {
    final auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  static void resetPassword(BuildContext context, String email) {
    final auth = FirebaseAuth.instance;
    auth.sendPasswordResetEmail(email: email);
  }
}
