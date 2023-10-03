import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_textfield.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? Function(String?)? emailValidator = (String? email) {
      if (email == null || email.isEmpty) {
        return 'Email address is required';
      }

      // Regular expression to validate email addresses
      final RegExp emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      );

      if (!emailRegex.hasMatch(email)) {
        return 'Invalid email address';
      }

      return null; // Email is valid
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

      return null; // Password is valid
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    color: Color(0xffBDBDBD),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/logo.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      height: 1,
                      color: Color(0xffBDBDBD),
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
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24, bottom: 40),
              child: Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 223, 220, 220).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    SizedBox(
                      height: 40,
                    ),
                    ReusableTextField(
                        label: 'Email', validator: emailValidator),
                    ReusableTextField(
                      label: 'Password',
                      validator: passwordValidator,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
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
                              // if (formKey.currentState!.validate() == true) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                              // }
                            },
                            bgColor: Color(0xff242424),
                            txtColor: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: new Text(
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
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
