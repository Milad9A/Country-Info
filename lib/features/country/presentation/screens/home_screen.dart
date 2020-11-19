import 'package:chopper_test/features/country/presentation/widgets/country_controls.dart';
import 'package:chopper_test/features/country/presentation/widgets/country_display.dart';

import '../bloc/country_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Info'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<CountryBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CountryBloc>(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CountryBloc, CountryState>(
            builder: (context, state) {
              if (state is CountryLoadInProgress) {
                return CircularProgressIndicator();
              } else if (state is CountryLoadSuccess) {
                return CountryDisplay(country: state.country);
              } else if (state is CountryLoadFailure) {
                return Center(child: Text(state.message));
              } else {
                return Text('Start Searching :)');
              }
            },
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: CountryControls(),
          ),
        ],
      ),
    );
  }
}
