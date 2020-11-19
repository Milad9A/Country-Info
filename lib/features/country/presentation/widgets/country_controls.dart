import 'package:chopper_test/features/country/presentation/bloc/country_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryControls extends StatefulWidget {
  @override
  _CountryControlsState createState() => _CountryControlsState();
}

class _CountryControlsState extends State<CountryControls> {
  String inputString;
  final controller = TextEditingController();

  void dispatchGetCountry() {
    controller.clear();
    BlocProvider.of<CountryBloc>(context).add(
      GetCountryUsingName(inputString),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
            ),
            hintText: 'Country\'s name.',
          ),
          onChanged: (value) {
            inputString = value;
          },
          onSubmitted: (_) {
            print(inputString);
            dispatchGetCountry();
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            dispatchGetCountry();
          },
        ),
      ],
    );
  }
}
