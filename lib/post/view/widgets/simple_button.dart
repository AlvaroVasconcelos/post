import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text(
        'Create',
      ),
    );
  }
}
