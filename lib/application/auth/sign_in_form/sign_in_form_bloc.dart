import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/auth_failures.dart';
import 'package:firebase_todo/domain/auth/i_auth_facade.dart';
import 'package:firebase_todo/domain/auth/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) async {
      emit(state.copyWith(
        emailAddress: EmailAddress(email: event.email),
        authFailureOrSuccessOption: none(), //resetting the previous response
      ));
    });
    on<PasswrodChanged>((event, emit) async {
      emit(state.copyWith(
        password: Password(password: event.password),
        authFailureOrSuccessOption: none(), //resetting the previous response
      ));
    });

    on<RegisterWithEmailAndPasswordPressed>(_registerWithEmailAndPassword);
    on<SignInWithEmailAndPasswordPressed>(_loginWithEmailAndPassword);

    on<SignInWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(), //resetting the previous response
      ));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption:
            some(failureOrSuccess), //adding the response
      ));
    });
  }
  Future<void> _registerWithEmailAndPassword(
    RegisterWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSucces;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSucces = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      //  failureOrSucces = none();
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSucces), //if null then none
      //if some then some (handy use of ternary));
    ));
  }

  Future<void> _loginWithEmailAndPassword(
    SignInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSucces;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSucces = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      //  failureOrSucces = none();
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSucces), //if null then none
      //if some then some (handy use of ternary));
    ));
  }
}

  // @override
  // Stream<SignInFormState> mapEventToState(
  //   SignInFormEvent event,
  // ) async* {
  //   yield* event.map(
  //     emailChanged: (e) async* {
  //       yield state.copyWith(
  //         emailAddress: EmailAddress(email: e.email),
  //         authFailureOrSuccessOption: none(), //resetting the previous response
  //       );
  //     },
  //     passwordChanged: (e) async* {
  //       yield state.copyWith(
  //         password: Password(password: e.password),
  //         authFailureOrSuccessOption: none(), //resetting the previous response
  //       );
  //     },
  // registerWithEmailAndPasswordPressed: (e) async* {
  //   yield* _performActionAuthFacadeWithEmailAndPassword(
  //       _authFacade.registerWithEmailAndPassword);
  // },
  // signInWithEmailAndPasswordPressed: (e) async* {
  //   yield* _performActionAuthFacadeWithEmailAndPassword(
  //       _authFacade.signInWithEmailAndPassword);
  // },
  //     signInWithGooglePressed: (e) async* {
  //       yield state.copyWith(
  //         isSubmitting: true,
  //         authFailureOrSuccessOption: none(), //resetting the previous response
  //       );
  //       final failureOrSuccess = await _authFacade.signInWithGoogle();
  //       yield state.copyWith(
  //         isSubmitting: false,
  //         authFailureOrSuccessOption:
  //             some(failureOrSuccess), //adding the response
  //       );
  //     },
  //   );
  // }

//   Stream<SignInFormState> _performActionAuthFacadeWithEmailAndPassword(
//     Future<Either<AuthFailure, Unit>> Function({
//       required EmailAddress emailAddress,
//       required Password password,
//     })
//         forwardedCall,
//   ) async* {
//     Either<AuthFailure, Unit>? failureOrSucces;

//     final isEmailValid = state.emailAddress.isValid();
//     final isPasswordValid = state.password.isValid();

//     if (isEmailValid && isPasswordValid) {
//       yield state.copyWith(
//         isSubmitting: true,
//         authFailureOrSuccessOption: none(),
//       );
//       failureOrSucces = await forwardedCall(
//         emailAddress: state.emailAddress,
//         password: state.password,
//       );
//     } else {
//       //  failureOrSucces = none();
//     }
//     yield state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: AutovalidateMode.always,
//       authFailureOrSuccessOption: optionOf(failureOrSucces), //if null then none
//       //if some then some (handy use of ternary)
//     );
//   }
// }
