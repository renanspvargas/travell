import 'package:travell/imports.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  final List<DataModel> places;

  LoadedState(this.places);

  @override
  List<Object?> get props => [places];
}
