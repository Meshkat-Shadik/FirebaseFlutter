import 'package:auto_route/auto_route.dart';
import 'package:firebase_todo/presentation/notes/note_form/note_form_page.dart';
import 'package:firebase_todo/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_todo/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_todo/presentation/splash/connection_checker_screen.dart';
import 'package:firebase_todo/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: ConnectionCheckerScreen, initial: true),
    AutoRoute<dynamic>(page: SplashPage),
    AutoRoute<dynamic>(page: SignInPage),
    AutoRoute<dynamic>(page: NotesOverviewPage),
    AutoRoute<dynamic>(
      page: NoteFormPage,
      fullscreenDialog: true,
    ),
  ],
)
class $AppRouter {}
