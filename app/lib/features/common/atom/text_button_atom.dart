import 'package:flutter/material.dart';

class TextButtonAtom extends StatelessWidget {
  const TextButtonAtom({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
