// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return CountryModel(
    name: json['name'] as String,
    capital: json['capital'] as String,
    region: json['region'] as String,
    subregion: json['subregion'] as String,
    population: json['population'] as int,
  );
}

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'region': instance.region,
      'subregion': instance.subregion,
      'population': instance.population,
    };
