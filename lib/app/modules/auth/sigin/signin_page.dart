import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/app/modules/auth/sigin/signin_controller.dart';
import 'package:instagram_clone/common/routes/name.dart';
import 'package:instagram_clone/common/styles/colors.dart';

import '../../../../common/widgets/text_form_field.dart';
import '../../../services/locator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final _controller = locator.get<SignInController>();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _controller.dispose();
  }

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
              GestureDetector(
                onTap: () {
                  _controller.signIn(email: '', name: '', password: '');
                },
                child: Container(
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
                  child: const Text('Sign-In'),
                ),
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
                  Navigator.of(context).pushReplacementNamed(AppRoutes.signup);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          "Don't have account?",
                          style: TextStyle(color: AppColors.secondaryColor),
                        )),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'SignUp',
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
