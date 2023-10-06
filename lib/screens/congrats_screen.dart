import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/screens/home_screen.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0, left: 60, right: 50),
          child: Center(
            child: Column(
              children: [
                Text(
                  "SUCCESS!",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/success.png",
                ),
                Text(
                  "Your order will be delivered soon. Thank you for choosing our app!",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: size.width,
                  height: 60,
                  child: ReusableButton(
                      buttonText: "Track Your Orders",
                      onPressed: () {},
                      bgColor: Colors.black,
                      txtColor: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: size.width,
                  height: 60,
                  child: ReusableButton(
                      buttonText: "Back To Home",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const HomeScreen())));
                      },
                      bgColor: Colors.white,
                      txtColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
