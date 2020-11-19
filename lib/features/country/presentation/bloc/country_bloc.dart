import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/country.dart';
import '../../domain/usecases/get_country_by_name.dart';

part 'country_event.dart';
part 'country_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE = 'Invalid Input';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryByName getCountryByName;

  CountryBloc({
    @required GetCountryByName getCN,
  })  : assert(getCN != null),
        getCountryByName = getCN,
        super(CountryInitial());

  @override
  Stream<CountryState> mapEventToState(
    CountryEvent event,
  ) async* {
    if (event is GetCountryUsingName) {
      final input = event.name.toString();
      yield CountryLoadInProgress();
      final country = await getCountryByName(Params(name: input));

      yield* _mapGetCountryByNameToState(country);
    }
  }

  Stream<CountryState> _mapGetCountryByNameToState(
    Country country,
  ) async* {
    try {
      yield CountryLoadSuccess(country: country);
    } catch (e) {
      yield CountryLoadFailure(message: 'something\'s wrong i can feel it.');
    }
  }
}
