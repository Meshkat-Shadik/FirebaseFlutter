import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectivityCubit extends Cubit<bool> {
  Connectivity connectivity;
  StreamSubscription? connectivityStreamSubscription;
  ConnectivityCubit({required this.connectivity}) : super(false) {
    monitorInternetConnection();
  }

  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    connectivity.checkConnectivity();
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult == ConnectivityResult.none) {
          emit(false);
        } else {
          emit(true);
        }
      },
    );
  }

  @override
  Future<void> close() {
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
