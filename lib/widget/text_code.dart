import 'package:flutter/material.dart';

class TextCode extends StatelessWidget {
  const TextCode({
    Key? key,
    required this.node,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  final FocusNode node;
  final TextEditingController controller;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        focusNode: node,
        controller: controller,
        obscureText: true,
        onChanged: onChanged,
        keyboardType:
            const TextInputType.numberWithOptions(decimal: false, signed: false),
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
