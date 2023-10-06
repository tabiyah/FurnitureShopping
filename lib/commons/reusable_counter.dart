import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_container.dart';

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
            ReusableContainer(
                functionName: onIncrementPressed, iconName: Icons.add),
            const SizedBox(width: 12),
            Text(
              "$value",
              style: const TextStyle(
                  fontSize: 20, letterSpacing: 1, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 12),
            ReusableContainer(
                functionName: onDecrementPressed, iconName: Icons.remove)
          ],
        )
      ],
    );
  }
}
