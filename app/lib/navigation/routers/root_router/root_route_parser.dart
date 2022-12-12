import 'package:flutter/material.dart';

import 'root_route_info.dart';

class RootRouteParser extends RouteInformationParser<RootRouteInfo> {
  @override
  Future<RootRouteInfo> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final rootRouteInfo = RootRouteInfo.fromRouteInfo(routeInformation);

    return rootRouteInfo;
  }

  @override
  RouteInformation restoreRouteInformation(RootRouteInfo configuration) {
    final routeInfo = configuration.toRouteInfo();

    return routeInfo;
  }
}
