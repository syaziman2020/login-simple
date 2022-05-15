import 'package:flutter/material.dart';
import 'package:dialog_alert/dialog_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 50, 24, 24),
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'MyApp Title',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Login to Your App',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                showDialogAlert(
                  context: context,
                  title: 'Failed',
                  message: "password salah",
                  actionButtonTitle: 'OK',
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          )
        ],
      ),
    );
  }
}
