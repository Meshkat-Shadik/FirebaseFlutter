// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/cubit/connectivity_cubit.dart' as _i4;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i12;
import 'application/notes/note_form/note_form_bloc.dart' as _i13;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i14;
import 'application/theme_cubit/theme_cubit_cubit.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/notes/i_note_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/connectivity_injectable_module.dart' as _i18;
import 'infrastructure/core/firebase_injectable_module.dart' as _i19;
import 'infrastructure/notes/note_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final connectivityInjectableModule = _$ConnectivityInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.Connectivity>(
      () => connectivityInjectableModule.connection);
  gh.factory<_i4.ConnectivityCubit>(
      () => _i4.ConnectivityCubit(connectivity: get<_i3.Connectivity>()));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i5.FirebaseAuth>(), get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i10.INoteRepository>(
      () => _i11.NoteRepository(get<_i6.FirebaseFirestore>()));
  gh.factory<_i12.NoteActorBloc>(
      () => _i12.NoteActorBloc(get<_i10.INoteRepository>()));
  gh.factory<_i13.NoteFormBloc>(
      () => _i13.NoteFormBloc(get<_i10.INoteRepository>()));
  gh.factory<_i14.NoteWatcherBloc>(
      () => _i14.NoteWatcherBloc(get<_i10.INoteRepository>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.ThemeCubitCubit>(() => _i16.ThemeCubitCubit());
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i8.IAuthFacade>()));
  return get;
}

class _$ConnectivityInjectableModule extends _i18.ConnectivityInjectableModule {
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
