import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/auth.dart';
import 'package:flutter/material.dart';

class DemoHome extends StatelessWidget {
  DemoHome({super.key});

  final User? user = Auth().currentUser;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: const Text('Firebase Auth'),
    );
  }
}
