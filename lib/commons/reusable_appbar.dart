import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget {
  const ReusableAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        const SizedBox(
          width: 120,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff303030),
            fontFamily: 'Gelasio',
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            height: 1.26,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}
