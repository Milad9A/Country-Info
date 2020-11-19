// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CountryService extends CountryService {
  _$CountryService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CountryService;

  @override
  Future<Response<CountryModel>> getCountryByName(String name) {
    final $url = 'name/$name';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CountryModel, CountryModel>($request);
  }
}
