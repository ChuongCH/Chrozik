import 'package:flutter/material.dart';

class FadeSlidePage extends Page<dynamic> {
  const FadeSlidePage({
    super.key,
    required this.child,
    this.barrierColor = Colors.black,
    this.opaque = true,
    this.duration = const Duration(milliseconds: 250),
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
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: page,
          ),
        );
      },
      pageBuilder: (_, __, ___) {
        return child;
      },
    );
  }
}
