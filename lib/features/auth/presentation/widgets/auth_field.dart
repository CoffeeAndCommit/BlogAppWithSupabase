import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String? Function(String?)? validator;
 final String? hinttext;
 const AuthField({
    super.key,
    this.hinttext,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hinttext),
      validator: validator,
    );
  }
}
