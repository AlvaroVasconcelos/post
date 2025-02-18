import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class DescriptionFormField extends StatelessWidget {
  const DescriptionFormField({super.key, this.onChanged});

  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Description'),
      onChanged: onChanged,
      validator: Validatorless.multiple([
        Validatorless.required('Description is required'),
        Validatorless.max(
          500,
          'Description must have at most 500 characters',
        ),
      ]),
    );
  }
}
