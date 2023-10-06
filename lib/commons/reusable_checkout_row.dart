import 'package:flutter/material.dart';

class ReusableCheckoutRow extends StatelessWidget {
  const ReusableCheckoutRow({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const Icon(Icons.border_color)
        ],
      ),
    );
  }
}
