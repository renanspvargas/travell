import 'package:travell/imports.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;

  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
