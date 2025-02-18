import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class TitleFormField extends StatelessWidget {
  const TitleFormField({required this.onChanged, super.key});
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Title'),
      onChanged: onChanged,
      validator: Validatorless.multiple([
        Validatorless.required('Title is required'),
        Validatorless.max(
          100,
          'Title must have at most 100 characters',
        ),
      ]),
    );
  }
}
