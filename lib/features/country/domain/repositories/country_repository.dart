import '../entities/country.dart';

abstract class CountryRepository {
  Future<Country> getCountryByName(String name);
}
