import 'package:flutter/cupertino.dart';

import '../../paths/root_route.dart';

class RootRouteInfo {
  RootRouteInfo({
    this.path,
  });

  RootRouteInfo.fromRouteInfo(RouteInformation routeInformation) {
    final location = Uri.decodeFull(routeInformation.location ?? '');

    final uri = Uri.parse(location);

    path = uri.path;

    // final queryParams = uri.queryParameters;
    // final levelParam = queryParams[RootParams.level.param()];
  }

  String? path;

  RouteInformation toRouteInfo() {
    return RouteInformation(location: RootRoute.home.path());
  }
}
