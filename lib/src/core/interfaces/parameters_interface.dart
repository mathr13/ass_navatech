import 'package:equatable/equatable.dart';

abstract class Params<T> extends Equatable {}


class NoParameters extends Params {

  @override
  List<Object?> get props => [];

}