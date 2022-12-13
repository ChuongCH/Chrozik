import 'flavors.dart';

enum Config {
  appTitle,
  ;

  String get value {
    switch (Flavor.currentFlavor) {
      case Flavor.development:
        return {
          appTitle: 'Chrozik dev',
        }[this]!;

      case Flavor.production:
        return {
          appTitle: 'Chrozik',
        }[this]!;
    }
  }
}
