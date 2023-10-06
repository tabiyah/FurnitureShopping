import 'package:flutter/material.dart';

class ReusableCheckoutContainer extends StatelessWidget {
  const ReusableCheckoutContainer(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 223, 220, 220).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(children: [
        Image.asset(image),
        const SizedBox(
          width: 12,
        ),
        Text(text),
      ]),
    );
  }
}
