import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.keyboard = TextInputType.text,
    this.obscureText = false,
    required this.icon,
    required this.labelText,
    required this.hintText,
    required this.controller,
  }) : super(key: key);
  final IconData icon;
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboard;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: keyboard,
        cursorColor: Colors.grey,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
            hintText: hintText,
            label: Container(
                alignment: Alignment.centerLeft,
                width: 200,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                // alignment: Alignment.topLeft,
                child: Text(
                  labelText,
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  // textAlign: TextAlign.left,
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.grey),
            )));
  }
}
