// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_router_presenter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $RootRouterPresenterHash() =>
    r'4f0860397c78499919569936e2fc15d9031080f8';

/// See also [RootRouterPresenter].
final rootRouterPresenterProvider =
    NotifierProvider<RootRouterPresenter, RootRouterState>(
  RootRouterPresenter.new,
  name: r'rootRouterPresenterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $RootRouterPresenterHash,
);
typedef RootRouterPresenterRef = NotifierProviderRef<RootRouterState>;

abstract class _$RootRouterPresenter extends Notifier<RootRouterState> {
  @override
  RootRouterState build();
}

String $rootRouterHash() => r'fc6376e0c5b1693771a994c70c0f283b823d97c5';

/// See also [rootRouter].
final rootRouterProvider = Provider<RootRouter>(
  rootRouter,
  name: r'rootRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $rootRouterHash,
);
typedef RootRouterRef = ProviderRef<RootRouter>;
String $rootRouterBbdHash() => r'b47623e8717b024852548aff4a417c1b188b9005';

/// See also [rootRouterBbd].
final rootRouterBbdProvider = Provider<BackButtonDispatcher>(
  rootRouterBbd,
  name: r'rootRouterBbdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $rootRouterBbdHash,
);
typedef RootRouterBbdRef = ProviderRef<BackButtonDispatcher>;
String $rootRouterParserHash() => r'b015316b15f994714369f1bd020ce9bda483c084';

/// See also [rootRouterParser].
final rootRouterParserProvider = AutoDisposeProvider<RootRouteParser>(
  rootRouterParser,
  name: r'rootRouterParserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $rootRouterParserHash,
);
typedef RootRouterParserRef = AutoDisposeProviderRef<RootRouteParser>;
