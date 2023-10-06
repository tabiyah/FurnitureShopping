import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:furniture/commons/reusable_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 24),
              child: Text(
                'MAKE YOUR',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 24),
              child: Text(
                'HOME BEAUTIFUL',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 45, right: 24),
              child: Text(
                'The best simple place where you discover most wonderful furnitures make your home beautiful',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
              child: SizedBox(
                width: 159,
                height: 54,
                child: ReusableButton(
                  buttonText: 'Get Started',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  bgColor: const Color(0xff242424),
                  txtColor: const Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
