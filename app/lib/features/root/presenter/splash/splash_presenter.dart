import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../navigation/routers/root_router/presenter/root_router_presenter.dart';

part 'splash_presenter.g.dart';

class SplashPresenter {
  SplashPresenter({
    required this.ref,
  });

  final Ref ref;

  Future<void> initialize() async {
    await Future.wait([
      Future.delayed(const Duration(seconds: 3), () {}),
    ]);

    ref.read(rootRouterPresenterProvider.notifier).setInitialized(true);
  }
}

@riverpod
SplashPresenter splashPresenter(SplashPresenterRef ref) {
  return SplashPresenter(ref: ref);
}
