import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main/config/config.dart';
import '../../../main/config/flavors.dart';
import '../../../navigation/routers/root_router/presenter/root_router_presenter.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(rootRouterProvider);
    final bbd = ref.read(rootRouterBbdProvider);
    final parser = ref.read(rootRouterParserProvider);

    return MaterialApp.router(
      title: Config.appTitle.value,
      routerDelegate: router,
      routeInformationParser: parser,
      backButtonDispatcher: bbd,
      debugShowCheckedModeBanner: Flavor.currentFlavor == Flavor.development,
    );
  }
}
