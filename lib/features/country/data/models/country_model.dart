import 'package:meta/meta.dart';

import '../../domain/entities/country.dart';

class CountryModel extends Country {
  CountryModel({
    @required String name,
    @required String capital,
    @required String region,
    @required String subregion,
    @required int population,
  }) : super(
          capital: capital,
          name: name,
          population: population,
          region: region,
          subregion: subregion,
        );

  factory CountryModel.fromJson(List<dynamic> json) {
    return CountryModel(
      name: json[0]['name'],
      capital: json[0]['capital'],
      region: json[0]['region'],
      subregion: json[0]['subregion'],
      population: (json[0]['population'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'capital': capital,
      'region': region,
      'subregion': subregion,
      'population': population,
    };
  }

  @override
  List<Object> get props => [];
}
