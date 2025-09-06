import 'package:flutter/material.dart';


class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key, required this.hintText, this.prefixIcon,
  });

  final String? hintText;
  final Widget? prefixIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: prefixIcon,
        hintText: hintText,
      ),
    );
  }
}
