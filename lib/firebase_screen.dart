import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signUpWithEmail(String emailid,String userpassword)async
{

  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailid,
      password: userpassword,
    );
    return "Success";
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      return "Email Already Exist Please Login";
    }
  } return "";

}



Future<String?> loginWithEmail(String email,String password)async
{
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    return "Success";
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
      return "Your Email is Wrong  Or No User On This Email";
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      return 'Your Password Is Wrong!!!!';
    }
  }
  return "";
}

bool checkuser()
{
  User? user = FirebaseAuth.instance.currentUser;
  if(user!=null)
  {
    return true;
  }
  return false;

}

void logout()
{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}


Future<Object> googleLogin()async
{
  GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

  GoogleSignInAuthentication? authentication =  await googleSignInAccount?.authentication;

  var credential = GoogleAuthProvider.credential(accessToken: authentication?.accessToken ,idToken: authentication?.idToken);

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  await FirebaseAuth.instance.signInWithCredential(credential);

  return checkuser();
}

// void signInWithFacebook() async {
//
//   final LoginResult loginResult = await FacebookAuth.instance
//       .login(permissions: ["public_profile", "email"]);
//   await FacebookAuth.instance.getUserData();
//   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token,);
//
//   UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//   // return checkuser();
// }

Future<void> signInWithFacebook() async {
  try {
    final result =
    await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
    if (result.status == LoginStatus.success) {
      final userData = await FacebookAuth.i.getUserData();
      print(userData);
    }
  } catch (error) {
    print(error);
  }
}


