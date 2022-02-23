// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/notes/note.dart' as _i8;
import '../notes/note_form/note_form_page.dart' as _i5;
import '../notes/notes_overview/notes_overview_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/connection_checker_screen.dart' as _i1;
import '../splash/splash_screen.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ConnectionCheckerScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ConnectionCheckerScreen());
    },
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    NotesOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotesOverviewPage());
    },
    NoteFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.NoteFormPage(key: args.key, editedNote: args.editedNote),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(ConnectionCheckerScreenRoute.name, path: '/'),
        _i6.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(NotesOverviewPageRoute.name,
            path: '/notes-overview-page'),
        _i6.RouteConfig(NoteFormPageRoute.name, path: '/note-form-page')
      ];
}

/// generated route for
/// [_i1.ConnectionCheckerScreen]
class ConnectionCheckerScreenRoute extends _i6.PageRouteInfo<void> {
  const ConnectionCheckerScreenRoute()
      : super(ConnectionCheckerScreenRoute.name, path: '/');

  static const String name = 'ConnectionCheckerScreenRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i4.NotesOverviewPage]
class NotesOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const NotesOverviewPageRoute()
      : super(NotesOverviewPageRoute.name, path: '/notes-overview-page');

  static const String name = 'NotesOverviewPageRoute';
}

/// generated route for
/// [_i5.NoteFormPage]
class NoteFormPageRoute extends _i6.PageRouteInfo<NoteFormPageRouteArgs> {
  NoteFormPageRoute({_i7.Key? key, required _i8.Note? editedNote})
      : super(NoteFormPageRoute.name,
            path: '/note-form-page',
            args: NoteFormPageRouteArgs(key: key, editedNote: editedNote));

  static const String name = 'NoteFormPageRoute';
}

class NoteFormPageRouteArgs {
  const NoteFormPageRouteArgs({this.key, required this.editedNote});

  final _i7.Key? key;

  final _i8.Note? editedNote;

  @override
  String toString() {
    return 'NoteFormPageRouteArgs{key: $key, editedNote: $editedNote}';
  }
}
