part of 'country_bloc.dart';

abstract class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object> get props => [];
}

class GetCountryUsingName extends CountryEvent {
  final String name;

  GetCountryUsingName(this.name);

  @override
  List<Object> get props => [name];
}
