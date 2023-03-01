import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media/Signin_screen.dart';
import 'package:social_media/home_screen.dart';
import 'package:social_media/signup_screen.dart';


void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SignUpScreen(),
        'signin':(context) => SignInScreen(),
        'home':(context) => HomeScreen(),
      },
    ),
  );
}