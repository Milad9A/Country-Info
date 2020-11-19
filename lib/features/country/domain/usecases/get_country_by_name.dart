import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/country.dart';
import '../repositories/country_repository.dart';

class GetCountryByName implements UseCase<Country, Params> {
  final CountryRepository repository;

  GetCountryByName(this.repository);

  @override
  Future<Country> call(
    Params params,
  ) async {
    return await repository.getCountryByName(params.name);
  }
}

class Params extends Equatable {
  final String name;

  Params({
    @required this.name,
  });

  @override
  List<Object> get props => [name];
}
