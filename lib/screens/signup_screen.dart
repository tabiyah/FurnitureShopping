import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_textfield.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/commons/reusable_top.dart';
import 'package:furniture/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController passwordCtrl = TextEditingController();

  TextEditingController confirmPasswordCtrl = TextEditingController();

  String? confirmPasswordValidator(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm Password is required';
    }

    if (passwordCtrl != confirmPasswordCtrl) {
      return 'Passwords do not match';
    }

    return null;
  }

  String? nameValidator(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  String? Function(String?)? emailValidator = (String? email) {
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
  };

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

  String? ConfirmpasswordValidator(String? password) {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ReusableTop(),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
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
                child: Column(children: [
                  const SizedBox(
                    height: 40,
                  ),
                  ReusableTextField(label: 'Name', validator: nameValidator),
                  ReusableTextField(label: 'Email', validator: emailValidator),
                  ReusableTextField(
                    controller: passwordCtrl,
                    label: 'Password',
                    validator: passwordValidator,
                  ),
                  ReusableTextField(
                    controller: confirmPasswordCtrl,
                    label: 'Confirm Password',
                    validator: ConfirmpasswordValidator,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: SizedBox(
                        width: size.width,
                        height: 54,
                        child: ReusableButton(
                          buttonText: 'Signup',
                          onPressed: () {
                            if (formKey.currentState!.validate() == true) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            }
                          },
                          bgColor: const Color(0xff242424),
                          txtColor: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 67),
                    child: Row(
                      children: [
                        const Text("Already have an account"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Color(0xff303030),
                              fontFamily: 'Gelasio',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.26,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
