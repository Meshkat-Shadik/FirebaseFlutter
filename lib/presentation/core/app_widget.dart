import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_todo/application/auth/auth/auth_bloc.dart';
import 'package:firebase_todo/application/cubit/connectivity_cubit.dart';
import 'package:firebase_todo/application/theme_cubit/theme_cubit_cubit.dart';
import 'package:firebase_todo/injection.dart';
import 'package:firebase_todo/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<ThemeCubitCubit>(
          create: (context) => getIt<ThemeCubitCubit>(),
        ),
        BlocProvider<ConnectivityCubit>(
          create: (_) => getIt<ConnectivityCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubitCubit, bool>(
        builder: (context, state) {
          return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            title: 'Notes',
            theme: ThemeData(
              colorSchemeSeed: Colors.green.shade800,
              brightness: state ? Brightness.light : Brightness.dark,
              useMaterial3: true,
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
