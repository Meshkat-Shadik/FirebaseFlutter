import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_todo/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const Initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(userOption.fold(
        () => const AuthState.unAuthenticated(),
        (a) => const AuthState.authenticated(),
      ));
    });

    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const AuthState.unAuthenticated());
    });
  }

  // @override
  // Stream<AuthState> mapEventToState(
  //   AuthEvent event,
  // ) async* {
  //   yield* event.map(
  //     authCheckRequested: (e) async* {
  //       final userOption = await _authFacade.getSignedInUser();
  //       yield userOption.fold(
  //         () => const AuthState.unAuthenticated(),
  //         (a) => const AuthState.authenticated(),
  //       );
  //     },
  //     signedOut: (e) async* {
  //       await _authFacade.signOut();
  //       yield const AuthState.unAuthenticated();
  //     },
  //   );
  // }
}
