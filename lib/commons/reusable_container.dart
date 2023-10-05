import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer(
      {super.key, required this.functionName, required this.iconName});
  final Function() functionName;
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: 12),
        GestureDetector(
          onTap: functionName,
          child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xfff0f0f0),
              ),
              child: Icon(
                iconName,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
