import 'package:chopper_test/features/country/data/services/country_service.dart';

import 'features/country/data/datasources/country_remote_data_source.dart';
import 'features/country/data/repositories/country_repository.dart';
import 'features/country/domain/repositories/country_repository.dart';
import 'features/country/domain/usecases/get_country_by_name.dart';
import 'features/country/presentation/bloc/country_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => CountryBloc(getCN: sl()),
  );

  sl.registerLazySingleton(() => GetCountryByName(sl()));

  sl.registerLazySingleton<CountryRepository>(
    () => CountryRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton<CountryRemoteDataSource>(
    // () => CountryRemoteDataSourceImpl(client: sl()),
    () => CountryRemoteDataSourceImpl(countryService: sl()),
  );

  // sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => CountryService.create());
}
