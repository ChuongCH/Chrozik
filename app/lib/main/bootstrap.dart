import 'dart:developer';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/root/page/app.dart';

void bootstrap() {
  WidgetsFlutterBinding.ensureInitialized();

  log('Going full screen');
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  log('Set up crashlytic');
  final crashlytic = FirebaseCrashlytics.instance;
  FlutterError.onError = (details) {
    log(
      details.exception.toString(),
      stackTrace: details.stack,
    );

    crashlytic.recordFlutterFatalError(details);
  };

  PlatformDispatcher.instance.onError = (exception, stackTrace) {
    log(
      exception.toString(),
      stackTrace: stackTrace,
    );

    FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      fatal: true,
    );

    return true;
  };

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
