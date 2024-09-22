import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  IconData iconData;
  String text;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
          hintText: hintText,
          prefixIcon: Icon(iconData),
          label:  Text(text)),
    );
  }
}
