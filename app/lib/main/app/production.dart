import '../bootstrap.dart';
import '../config/flavors.dart';

void main() {
  Flavor.currentFlavor = Flavor.production;

  bootstrap();
}
