import 'package:flutter/material.dart';
import 'package:extrack/sign_up.dart';

  


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
      // routes: {
      //   "./LoginUp": (context) => const LogIn(),
      // },
    );
  }
}
