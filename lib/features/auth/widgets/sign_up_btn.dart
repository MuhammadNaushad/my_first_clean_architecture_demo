import 'package:flutter/material.dart';

class SingUpButton extends StatelessWidget {
  const SingUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber)),
        onPressed: () {},
        child: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ));
  }
}
