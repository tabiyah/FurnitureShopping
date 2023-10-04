import 'package:flutter/material.dart';

class ReusableCounter extends StatelessWidget {
  final int value;
  final Function() onIncrementPressed;
  final Function() onDecrementPressed;
  const ReusableCounter(
      {super.key,
      required this.value,
      required this.onDecrementPressed,
      required this.onIncrementPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 12),
            GestureDetector(
              onTap: onIncrementPressed,
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  color: Color(0xfff0f0f0),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              "$value",
              style: const TextStyle(fontSize: 16, letterSpacing: 1),
            ),
            const SizedBox(width: 12),
            GestureDetector(
                onTap: onDecrementPressed,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Color(0xfff0f0f0),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                )),
          ],
        )
      ],
    );
  }
}
