import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStore = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());
}

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final String errorMessage;

  AuthState({this.authStatus = AuthStatus.checking, this.errorMessage = ''});

  AuthState copyWith({
    AuthStatus? authStatus,
    String? errorMessage,
  }) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          errorMessage: errorMessage ?? this.errorMessage);
}
