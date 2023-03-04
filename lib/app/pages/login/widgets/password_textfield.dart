import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final String labelText;
  final void Function(String)? onChanged;
  final void Function(bool?)? checkboxOnChanged;
  final bool checkbox;
  final bool obscureText;

  const PasswordTextField({
    Key? key,
    required this.labelText,
    this.onChanged,
    required this.checkboxOnChanged,
    required this.checkbox,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: checkbox,
              onChanged: checkboxOnChanged,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Show Password',
            ),
          ],
        )
      ],
    );
  }
}
