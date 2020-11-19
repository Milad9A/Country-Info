import 'package:meta/meta.dart';

import '../../domain/entities/country.dart';
import '../../domain/repositories/country_repository.dart';
import '../datasources/country_remote_data_source.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource remoteDataSource;

  CountryRepositoryImpl({
    @required this.remoteDataSource,
  });

  @override
  Future<Country> getCountryByName(String name) async {
    return await remoteDataSource.getCountryByName(name);
  }
}
