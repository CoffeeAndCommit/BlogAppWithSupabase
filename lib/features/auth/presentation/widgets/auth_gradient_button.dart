import 'package:blog_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatefulWidget {
  final Function()? onPressed;
  final String buttonText;
  const AuthGradientButton(
      {super.key, this.onPressed, required this.buttonText});

  @override
  State<AuthGradientButton> createState() => _AuthGradientButtonState();
}

class _AuthGradientButtonState extends State<AuthGradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                AppColor.gradient1,
                AppColor.gradient2,
                // AppColor.gradient3,
              ])),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.transparentColor,
          shadowColor: AppColor.transparentColor,
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
