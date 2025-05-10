import 'package:blog_app/core/theme/app_color.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(
                height: 30,
              ),
              const AuthField(
                hinttext: "Name",
              ),
              const SizedBox(
                height: 15,
              ),
              const AuthField(
                hinttext: "Email",
              ),
              const SizedBox(
                height: 15,
              ),
              const AuthField(
                hinttext: "Password",
              ),
              const SizedBox(
                height: 15,
              ),
              const AuthGradientButton(onPressed: null),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      children: [
                    TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColor.gradient2,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                      text: "Don/'t have an account? ",
                      style: Theme.of(context).textTheme.titleMedium))
            ],
          ),
        ));
  }
}
