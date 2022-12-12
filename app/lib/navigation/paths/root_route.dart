enum RootRoute {
  splash,
  home,
  login,
  maintain,
  forceUpdate,
  loading,
  ;

  String path() {
    switch (this) {
      case splash:
        return '/splash';

      case home:
        return '/home';

      case login:
        return '/login';

      case maintain:
        return '/maintain';

      case forceUpdate:
        return '/force-update';

      case loading:
        return '/loading';
    }
  }
}
