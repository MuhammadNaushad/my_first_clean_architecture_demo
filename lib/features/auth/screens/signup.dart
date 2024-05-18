import 'package:flutter/material.dart';
import 'package:my_first_clean_architecture_demo/features/auth/widgets/sign_up_btn.dart';
import 'package:my_first_clean_architecture_demo/features/auth/widgets/text_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                SignUpTextField(),
                SizedBox(
                  height: 20,
                ),
                SingUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
