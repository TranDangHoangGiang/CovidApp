import 'package:covid_tracker/Model/covid.dart';
import 'package:covid_tracker/View/countries_list_screen.dart';
import 'package:covid_tracker/ViewModel/world_sates_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:pie_chart/pie_chart.dart';

import '../Model/City.dart';

class WorldStates extends StatefulWidget {
  late String? city;

   WorldStates({Key? key , required this.city }) : super(key: key);

  @override
  _WorldStatesState createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates>

    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..repeat();
  TextEditingController searchController = TextEditingController();
   String _searchText = '';


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Autogenerateddata newsListViewModel = Autogenerateddata();

  final colorList = <Color>[
    Color(0xff4285F4),
    Color(0xff1aa260),
    Color(0xffde5246),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TypeAheadFormField<City>(
                  textFieldConfiguration: TextFieldConfiguration(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Enter a city',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        _searchText = value;
                      });
                     
                    },
                  ),
                  suggestionsCallback: (pattern) {
                    return cities.where((city) => city.name
                        .toLowerCase()
                        .contains(pattern.toLowerCase()));
                  },
                  itemBuilder: (context, City city) {
                    return ListTile(
                      title: Text(city.name),
                    );
                  },
                  onSuggestionSelected: (City citysearch) {
                    searchController.text = citysearch.name;
                    _searchText = citysearch.name;
                    widget.city=citysearch.name;
                   
                  },
                ),
                if(widget.city == 'world')[
                  
                ]
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(title), Text(value)],
          ),
          SizedBox(
            height: 5,
          ),
          Divider()
        ],
      ),
    );
  }
}
