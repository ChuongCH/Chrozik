enum Flavor {
  develop,
  release,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.develop:
        return 'Chrozik Develop';

      case Flavor.release:
        return 'Chrozik';

      default:
        return 'title';
    }
  }
}
