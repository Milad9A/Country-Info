import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Country extends Equatable {
  final String name;
  final String region;
  final String subregion;
  final String capital;
  final int population;

  Country({
    @required this.name,
    @required this.region,
    @required this.subregion,
    @required this.population,
    @required this.capital,
  });

  @override
  List<Object> get props => [name, region, subregion, population, capital];
}
