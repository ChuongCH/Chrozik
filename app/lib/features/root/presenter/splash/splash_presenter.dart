import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../navigation/routers/root_router/presenter/root_router_presenter.dart';

part 'splash_presenter.g.dart';

class SplashPagePresenter {
  SplashPagePresenter({
    required this.ref,
  });

  final Ref ref;

  late AnimationController controller;

  Future<void> initialize() async {
    await Future.wait([
      controller.forward(),
    ]);

    ref.read(rootRouterPresenterProvider.notifier).setInitialized(true);
  }
}

@riverpod
SplashPagePresenter splashPagePresenter(SplashPagePresenterRef ref) {
  return SplashPagePresenter(ref: ref);
}
