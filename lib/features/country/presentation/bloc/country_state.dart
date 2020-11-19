part of 'country_bloc.dart';

abstract class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object> get props => [];
}

class CountryInitial extends CountryState {}

class CountryLoadInProgress extends CountryState {}

class CountryLoadSuccess extends CountryState {
  final Country country;

  CountryLoadSuccess({@required this.country});

  @override
  List<Object> get props => [country];
}

class CountryLoadFailure extends CountryState {
  final String message;

  CountryLoadFailure({@required this.message});

  @override
  List<Object> get props => [message];
}
