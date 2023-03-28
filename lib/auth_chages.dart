import 'package:firebaseauth/auth.dart';
import 'package:firebaseauth/screens/demo_home.dart';
import 'package:firebaseauth/screens/login_register.dart';
import 'package:flutter/material.dart';

class AuthChanges extends StatefulWidget {
  const AuthChanges({super.key});

  @override
  State<AuthChanges> createState() => _AuthChangesState();
}

class _AuthChangesState extends State<AuthChanges> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DemoHome();
        } else {
          return LoginRegister();
        }
      },
    );
  }
}
