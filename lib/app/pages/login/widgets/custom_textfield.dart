import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final void Function(String)? onChanged;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
