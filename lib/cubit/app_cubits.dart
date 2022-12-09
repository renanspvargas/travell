import 'package:travell/imports.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
