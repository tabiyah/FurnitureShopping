import 'package:flutter/material.dart';

class ReusableTop extends StatefulWidget {
  const ReusableTop({super.key});

  @override
  State<ReusableTop> createState() => _ReusableTopState();
}

class _ReusableTopState extends State<ReusableTop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
