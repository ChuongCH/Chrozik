import 'package:flutter/material.dart';

class FadePage extends Page<dynamic> {
  const FadePage({
    super.key,
    super.name,
    required this.child,
    this.barrierColor = Colors.black,
    this.opaque = true,
    this.duration = const Duration(milliseconds: 300),
  });

  final Widget child;
  final Color barrierColor;
  final bool opaque;
  final Duration duration;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder<dynamic>(
      settings: this,
      opaque: opaque,
      barrierColor: barrierColor,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      transitionsBuilder: (_, anim, __, page) {
        return FadeTransition(
          opacity: anim,
          child: page,
        );
      },
      pageBuilder: (_, __, ___) {
        return child;
      },
    );
  }
}
