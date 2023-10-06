import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow({super.key, required this.price, required this.text});
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.displaySmall),
        Text(
          price,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
