import 'package:flutter/material.dart';

enum AppColors {
  neutral,
  base,
  primary,
  secondary,
  accent,
  error,
  ;

  Color get light => {
        neutral: const Color(0xFF000000),
        base: const Color(0xFFF7F7F7),
        primary: const Color(0xFF074F57),
        secondary: const Color(0xFF4BC6B9),
        accent: const Color(0xFF489FB5),
        error: const Color(0xFFDA4949),
      }[this]!;

  Color get dark => {
        neutral: const Color(0xFF000000),
        base: const Color(0xFFF7F7F7),
        primary: const Color(0xFF074F57),
        secondary: const Color(0xFF4BC6B9),
        accent: const Color(0xFF489FB5),
        error: const Color(0xFFDA4949),
      }[this]!;
}
