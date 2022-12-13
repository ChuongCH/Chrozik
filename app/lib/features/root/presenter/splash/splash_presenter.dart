import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_presenter.g.dart';

class SplashPresenter {
  SplashPresenter({
    required this.ref,
  });

  final Ref ref;

  late AnimationController controller;

  Future<void> initialize() async {
    await Future.wait([
      controller.forward(),
    ]);

    // ref.read(rootRouterPresenterProvider.notifier).setInitialized(true);
  }
}

@riverpod
SplashPresenter splashPresenter(SplashPresenterRef ref) {
  return SplashPresenter(ref: ref);
}
