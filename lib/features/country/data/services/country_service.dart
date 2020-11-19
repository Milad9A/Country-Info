import 'package:chopper/chopper.dart';
import 'package:chopper_test/features/country/data/models/country_model.dart';

import 'header_interceptor.dart';
import 'model_convertor.dart';

part 'country_service.chopper.dart';

@ChopperApi()
abstract class CountryService extends ChopperService {
  @Get(path: 'name/name')
  Future<Response<CountryModel>> getCountryByName(String name);

  static CountryService create() {
    final client = ChopperClient(
      baseUrl: 'https://restcountries.eu/rest/v2',
      interceptors: [HeaderInterceptor(), HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
      services: [
        _$CountryService(),
      ],
    );
    return _$CountryService(client);
  }
}
