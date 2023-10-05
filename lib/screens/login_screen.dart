import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_textfield.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/screens/home_screen.dart';
import 'package:furniture/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email address is required';
    }

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(email)) {
      return 'Invalid email address';
    }

    return null;
  }

  String? passwordValidator(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length <= 8) {
      return 'Password must be at least 8 characters long';
    }

    final RegExp specialCharRegex = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');

    if (!specialCharRegex.hasMatch(password)) {
      return 'Password must contain at least 1 special character';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 1,
                    color: const Color(0xffBDBDBD),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/logo.png',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      height: 1,
                      color: const Color(0xffBDBDBD),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 40,
              ),
              child: Text(
                'Hello!',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24, bottom: 40),
              child: Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 223, 220, 220)
                          .withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      ReusableTextField(
                          label: 'Email', validator: emailValidator),
                      ReusableTextField(
                        label: 'Password',
                        validator: passwordValidator,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Color(0xff303030),
                            fontFamily: 'Gelasio',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            height: 1.26,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: SizedBox(
                            width: size.width,
                            height: 54,
                            child: ReusableButton(
                              buttonText: 'Login',
                              onPressed: () {
                                if (formKey.currentState!.validate() == true) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()));
                                }
                              },
                              bgColor: const Color(0xff242424),
                              txtColor: const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()));
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                            color: Color(0xff303030),
                            fontFamily: 'Gelasio',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            height: 1.26,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
