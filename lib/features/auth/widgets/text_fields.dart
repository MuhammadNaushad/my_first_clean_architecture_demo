import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(hintText: "Name"),
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: "Name"),
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: "Name"),
        ),
      ],
    );
  }
}
