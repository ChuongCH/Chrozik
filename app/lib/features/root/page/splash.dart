import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main/constant/asset_path.dart';
import '../../../navigation/page_templates/fade_page.dart';
import '../../../navigation/paths/root_route.dart';
import '../presenter/splash/splash_presenter.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  static FadePage page() => FadePage(
        child: const SplashPage(),
        name: RootRoute.splash.name,
        key: const ValueKey(RootRoute.splash),
      );

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    presenter = ref.read(splashPagePresenterProvider);

    presenter
      ..controller = AnimationController(
        vsync: this,
        value: 0,
        duration: const Duration(milliseconds: 1500),
      )
      ..initialize();
  }

  late SplashPagePresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.white,
        child: Opacity(
          opacity: presenter.controller.value,
          child: Image.asset(AssetPath.pngAppLogo),
        ),
      ),
    );
  }
}
