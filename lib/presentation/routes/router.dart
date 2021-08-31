import 'package:auto_route/auto_route.dart';
import 'package:firebase_todo/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_todo/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: SplashPage, initial: true),
    AutoRoute<dynamic>(page: SignInPage),
  ],
)
class $AppRouter {}
