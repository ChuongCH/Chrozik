import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/home/page/home.dart';
import '../../../features/root/page/splash.dart';
import '../../paths/root_route.dart';
import 'model/root_router_state.dart';
import 'presenter/root_router_presenter.dart';
import 'root_route_info.dart';

class RootRouter extends RouterDelegate<RootRouteInfo>
    with PopNavigatorRouterDelegateMixin, ChangeNotifier {
  RootRouter({required this.ref}) {
    ref.listen(
      rootRouterPresenterProvider,
      (previous, next) {
        notifyListeners();
      },
    );
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final Ref ref;

  RootRouterState get _rootRouterState => ref.read(rootRouterPresenterProvider);

  RootRouterPresenter get _rootRouterPresenter =>
      ref.read(rootRouterPresenterProvider.notifier);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      observers: [HeroController()],
      onPopPage: _onPopPage,
      pages: [
        if (!_rootRouterState.isInitialized) ...[
          SplashPage.page()
        ] else if (_rootRouterState.isForceUpdate)
          ...[]
        else if (_rootRouterState.isMaintaining)
          ...[]
        else if (_rootRouterState.isLoggingIn)
          ...[]
        else ...[
          HomePage.page(),
          if (_rootRouterState.isLoading) ...[],
        ],
      ],
    );
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }

    return true;
  }

  @override
  RootRouteInfo get currentConfiguration => _getCurrentPath();
  RootRouteInfo _getCurrentPath() {
    return RootRouteInfo(
      path: RootRoute.home.path(),
    );
  }

  @override
  Future<void> setNewRoutePath(RootRouteInfo configuration) async {}
}
