import 'package:flutter/material.dart';

class PushSlidePage extends Page<dynamic> {
  const PushSlidePage({
    super.key,
    required this.currentChild,
    required this.gotoChild,
    this.barrierColor = Colors.black,
    this.opaque = true,
    this.duration = const Duration(milliseconds: 250),
  });

  final Widget currentChild;
  final Widget gotoChild;
  final Color barrierColor;
  final bool opaque;
  final Duration duration;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder<dynamic>(
      settings: this,
      opaque: false,
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      barrierColor: barrierColor,
      transitionsBuilder: (_, animation, __, page) {
        return Stack(
          children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-1, 0),
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linear,
                ),
              ),
              child: currentChild,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linear,
                ),
              ),
              child: page,
            )
          ],
        );
      },
      pageBuilder: (_, __, ___) {
        return gotoChild;
      },
    );
  }
}
