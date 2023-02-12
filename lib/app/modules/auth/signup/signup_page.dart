import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/routes/index.dart';
import '../../../../common/styles/index.dart';
import '../../../../common/widgets/text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              // Logo SVG
              SvgPicture.asset(
                "assets/images/instagram.svg",
                color: AppColors.primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
              // EmailField
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1676012100197-973cc7e8d28f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_a_photo)))
                ],
              ),
              const SizedBox(height: 24),
              TextFieldCommun(
                false,
                controller: _emailController,
                hinText: 'Email Adress',
                keyboardType: TextInputType.emailAddress,
              ),
              // PasswordField
              const SizedBox(height: 24),
              TextFieldCommun(true,
                  controller: _passwordController,
                  hinText: 'Password',
                  keyboardType: TextInputType.name),
              const SizedBox(height: 24),
              TextFieldCommun(true,
                  controller: _confirmController,
                  hinText: 'Confirm Password',
                  keyboardType: TextInputType.name),
              const SizedBox(height: 24),
              TextFieldCommun(false,
                  controller: _usernameController,
                  hinText: 'Insert UserName',
                  keyboardType: TextInputType.text),
              const SizedBox(height: 24),
              TextFieldCommun(false,
                  controller: _bioController,
                  hinText: 'Bio',
                  keyboardType: TextInputType.text),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  color: AppColors.blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                child: const Text('Sign-Up'),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(AppRoutes.signin);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          "Already account?",
                          style: TextStyle(color: AppColors.secondaryColor),
                        )),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
