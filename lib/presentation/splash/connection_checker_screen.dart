import 'package:auto_route/auto_route.dart';
import 'package:firebase_todo/application/cubit/connectivity_cubit.dart';
import 'package:firebase_todo/presentation/core/internet_disable.dart';
import 'package:firebase_todo/presentation/routes/router.gr.dart';
import 'package:firebase_todo/presentation/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionCheckerScreen extends StatelessWidget {
  const ConnectionCheckerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectivityCubit, bool>(
      listener: (context, state) {
        state
            ? context.router.replace(const SplashPageRoute())
            : const Text('sdbasgjdasgdas');
      },
      builder: (context, state) => const Scaffold(
        body: Center(
          child: InternetDisable(),
        ),
      ),
    );
  }
}
