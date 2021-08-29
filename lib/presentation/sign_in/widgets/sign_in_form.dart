import 'dart:ui';

import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_todo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (l) {
              // ignore: avoid_single_cascade_in_expression_statements
              Flushbar<dynamic>(
                title: '⚠',
                message: l.map(
                  serverError: (_) => 'Server Error!',
                  emailAlreadyUsed: (_) => 'Email already in use!',
                  invalidEmailandPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  cancelledByUser: (_) => 'Cancelled!',
                ),
                duration: const Duration(seconds: 3),
              )..show(context);
            },
            (r) {
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: ListView(
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (l) => l.maybeMap(
                        orElse: () => null,
                        invalidEmail: (_) => 'Invalid Email',
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            SignInFormEvent.showPasswordPressed(context
                                .read<SignInFormBloc>()
                                .state
                                .showPassword),
                          );
                    },
                    icon: context.read<SignInFormBloc>().state.showPassword ==
                            true
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                obscureText:
                    !!context.read<SignInFormBloc>().state.showPassword,
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                          (l) => l.maybeMap(
                            orElse: () => null,
                            shortPassword: (_) => 'Short Password',
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('SIGN IN'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('REGISTER'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGooglePressed(),
                      );
                },
                child: const Text('SIGN IN WITH GOOGLE'),
              ),
            ],
          ),
        );
      },
    );
  }
}
