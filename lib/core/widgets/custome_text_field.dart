import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.hintText, this.prefixIcon, this.hintStyle, this.textAlign = TextAlign.start});

  final String? hintText;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      decoration: InputDecoration(filled: true, prefixIcon: prefixIcon, hintText: hintText, hintStyle: hintStyle),
    );
  }
}
