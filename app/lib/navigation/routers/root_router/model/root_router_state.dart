import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_router_state.freezed.dart';

@freezed
class RootRouterState with _$RootRouterState {
  const factory RootRouterState({
    @Default(false) bool isInitialized,
    @Default(false) bool isLoading,
    @Default(false) bool isLoggingIn,
    @Default(false) bool isForceUpdate,
    @Default(false) bool isMaintaining,
  }) = _RootRouterState;
}
