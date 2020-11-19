import 'dart:convert';

import 'package:chopper_test/features/country/data/services/country_service.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../domain/entities/country.dart';
import '../models/country_model.dart';

abstract class CountryRemoteDataSource {
  Future<Country> getCountryByName(String name);
}

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final CountryService countryService;

  CountryRemoteDataSourceImpl({
    @required this.countryService,
  });

  @override
  Future<Country> getCountryByName(String name) async {
    final response = await countryService.getCountryByName(name);
    print(response.statusCode);
    return response.body;
  }

  // final http.Client client;

  // CountryRemoteDataSourceImpl({
  //   @required this.client,
  // });

  // @override
  // Future<Country> getCountryByName(String name) =>
  //     _getCountryFromUrl('https://restcountries.eu/rest/v2/name/$name');

  // Future<Country> _getCountryFromUrl(String url) async {
  //   final response = await client.get(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'X-RapidAPI-Key': 'a31f2b2848mshe9fab45ef56d6c6p13dcb8jsn41dd996384ce',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     return CountryModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Server Exception');
  //   }
  // }
}
