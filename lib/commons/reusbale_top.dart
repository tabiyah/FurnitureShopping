import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 1,
                  color: Color(0xffBDBDBD),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/logo.png',
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 1,
                    color: Color(0xffBDBDBD),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
