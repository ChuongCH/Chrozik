import 'package:debug_logger/debug_logger/debug_logger.dart';
import 'package:flutter/material.dart';

import '../../../navigation/page_templates/fade_page.dart';
import '../../../navigation/paths/root_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static FadePage page() {
    debugLogger.d('Going ${RootRoute.home.name}');

    return FadePage(
      child: const HomePage(),
      name: RootRoute.home.name,
      key: const ValueKey(RootRoute.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a app bar'),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
