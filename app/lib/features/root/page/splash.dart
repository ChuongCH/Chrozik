import 'package:debug_logger/debug_logger/debug_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../navigation/page_templates/fade_page.dart';
import '../../../navigation/paths/root_route.dart';
import '../../common/atom/chrozik_atom.dart';
import '../presenter/splash/splash_presenter.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  static FadePage page() {
    debugLogger.d('Going ${RootRoute.splash.name}');

    return FadePage(
      child: const SplashPage(),
      name: RootRoute.splash.name,
      key: const ValueKey(RootRoute.splash),
    );
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    ref.read(splashPresenterProvider).initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChrozikAtom(height: 200),
      ),
    );
  }
}
