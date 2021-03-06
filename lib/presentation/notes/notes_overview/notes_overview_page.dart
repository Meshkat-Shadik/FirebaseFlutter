import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_todo/application/auth/auth/auth_bloc.dart';
import 'package:firebase_todo/application/cubit/connectivity_cubit.dart';
import 'package:firebase_todo/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_todo/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_todo/application/theme_cubit/theme_cubit_cubit.dart';
import 'package:firebase_todo/injection.dart';
import 'package:firebase_todo/presentation/core/internet_disable.dart';
import 'package:firebase_todo/presentation/notes/notes_overview/widgets/notes_overview_body.dart';
import 'package:firebase_todo/presentation/notes/notes_overview/widgets/uncompleted_switch_button.dart';
import 'package:firebase_todo/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllstarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) =>
                    context.router.replace(const SignInPageRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.noteFailure.map(
                      unexpected: (_) =>
                          'Unexpected Error occured while deleting!',
                      insufficientPermission: (_) =>
                          'Insufficient Permission ???',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<ConnectivityCubit, bool>(
          builder: (context, state) {
            return state
                ? Scaffold(
                    appBar: AppBar(
                      title: const Text('Notes'),
                      leading: IconButton(
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(const AuthEvent.signedOut());
                        },
                        icon: const Icon(Icons.exit_to_app),
                      ),
                      actions: [
                        UncompletedSwitch(),
                        BlocBuilder<ThemeCubitCubit, bool>(
                          builder: (context, state) {
                            return IconButton(
                              onPressed: () {
                                BlocProvider.of<ThemeCubitCubit>(context)
                                    .toggleTheme(
                                  value: !state,
                                );
                              },
                              icon: Icon(
                                state
                                    ? Icons.nightlight_outlined
                                    : Icons.brightness_7,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    body: const NotesOverviewBody(),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {
                        context.router
                            .push(NoteFormPageRoute(editedNote: null));
                      },
                      child: const Icon(Icons.add),
                    ),
                  )
                : const Scaffold(
                    body: Center(
                      child: InternetDisable(),
                    ),
                  );
          },
        ),
      ),
    );
  }
}


