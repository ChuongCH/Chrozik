import 'package:debug_logger/debug_logger/debug_logger.dart';
import 'package:debug_logger/wrapper.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/root/page/app.dart';

void bootstrap() {
  WidgetsFlutterBinding.ensureInitialized();

  debugLogger.d('Going full screen');
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  debugLogger.d('Going landscape mode');
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  debugLogger.d('Set up crashlytic');
  final crashlytic = FirebaseCrashlytics.instance;
  FlutterError.onError = (details) {
    debugLogger.d(details.exception);

    crashlytic.recordFlutterFatalError(details);
  };

  PlatformDispatcher.instance.onError = (exception, stackTrace) {
    debugLogger.d(exception);

    FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      fatal: true,
    );

    return true;
  };

  runApp(
    const DebugLoggerWrapper(
      child: ProviderScope(child: App()),
    ),
  );
}
