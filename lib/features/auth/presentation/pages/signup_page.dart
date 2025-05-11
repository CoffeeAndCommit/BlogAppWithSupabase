import 'package:blog_app/core/routes/routeNames.dart';
import 'package:blog_app/core/theme/app_color.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context)
                  .pop(); // or context.pop() if using go_router
            },
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
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
                AuthField(
                  controller: _nameController,
                  hinttext: "Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthField(
                  controller: _emailController,
                  hinttext: "Email",
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthField(
                  isObscureText: true,
                  controller: _passwordController,
                  hinttext: "Password",
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthGradientButton(
                    buttonText: "Sign Up",
                    onPressed: (() {
                      _formKey.currentState!.validate();
                    })),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => context.go(RouteNames.signIn),
                  child: RichText(
                      text: TextSpan(
                          children: [
                        TextSpan(
                          text: 'Sign In',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: AppColor.gradient2,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                          text: "Already have an account? ",
                          style: Theme.of(context).textTheme.titleMedium)),
                )
              ],
            ),
          ),
        ));
  }
}
