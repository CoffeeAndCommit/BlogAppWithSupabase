import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hinttext;
  final bool isObscureText;
  final TextEditingController controller;
  const AuthField({
    super.key,
    required this.hinttext,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(hintText: hinttext),
      validator: ((value) {
        if (value!.isEmpty) {
          return "$hinttext can't be empty";
        } else {
          return "";
        }
      }),
    );
  }
}
