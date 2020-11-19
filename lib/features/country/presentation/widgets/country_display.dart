import 'package:chopper_test/features/country/domain/entities/country.dart';
import 'package:flutter/material.dart';

class CountryDisplay extends StatelessWidget {
  final Country country;

  const CountryDisplay({
    this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name: ${country.name}'),
        Text('Capital: ${country.capital}'),
        Text('Region: ${country.region}'),
        Text('Subregion: ${country.subregion}'),
        Text('Population: ${country.population.toString()}'),
      ],
    );
  }
}
