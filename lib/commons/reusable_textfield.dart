import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validator;
  final bool obscure;
  final TextEditingController? controller;
  const ReusableTextField(
      {super.key,
      required this.label,
      required this.validator,
      this.obscure = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, color: Color(0xff909090)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextFormField(
            validator: validator,
            decoration: const InputDecoration(),
            obscureText: obscure,
            controller: controller,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
