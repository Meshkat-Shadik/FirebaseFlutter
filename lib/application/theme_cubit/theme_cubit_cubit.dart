import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeCubitCubit extends HydratedCubit<bool> {
  ThemeCubitCubit() : super(false);

  void toggleTheme({required bool value}) {
    emit(value);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['isDark'] as bool;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    // ignore: unnecessary_cast
    return {'isDark': state} as Map<String, dynamic>;
  }
}
