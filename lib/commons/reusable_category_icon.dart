import 'package:flutter/material.dart';
import 'package:furniture/models/items_list.dart';

class CaategoryIcon extends StatefulWidget {
  const CaategoryIcon(this.index, {super.key});
  final int index;
  @override
  State<CaategoryIcon> createState() => _CaategoryIconState();
}

class _CaategoryIconState extends State<CaategoryIcon> {
  @override
  Widget build(BuildContext context) {
    bool select = categories[widget.index].select;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              select = true;
            });
          },
          child: Container(
            width: 50.0,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Image.asset(categories[widget.index].image)),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          categories[widget.index].name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
