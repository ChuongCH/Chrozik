import 'package:flutter/material.dart';

import '../../../navigation/page_templates/fade_page.dart';
import '../../../navigation/paths/root_route.dart';
import '../../common/atom/network_image_atom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static FadePage page() => FadePage(
        child: const HomePage(),
        name: RootRoute.home.name,
        key: const ValueKey(RootRoute.home),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NetworkImageAtom(
        url:
            'https://travelo-public.s3.ap-northeast-1.amazonaws.com/staticfiles/dummy/event_id-16_event.jpg',
      ),
    );
  }
}
