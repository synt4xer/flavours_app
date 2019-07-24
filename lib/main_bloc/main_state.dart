import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MainState extends Equatable {
  MainState([List props = const []]) : super(props);
}

class InitialMainState extends MainState {}
class AuthenticateState extends MainState {}
class UnAuthenticateState extends MainState {}
