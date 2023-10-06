import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_button.dart';

class ReusableBottomButton extends StatelessWidget {
  const ReusableBottomButton({super.key, required this.bottomButton});
  final ReusableButton bottomButton;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomAppBar(
        elevation: 0.0,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                    height: 70, width: size.width, child: bottomButton),
              ),
            ),
          ],
        ));
  }
}
