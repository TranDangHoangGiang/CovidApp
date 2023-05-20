import 'package:covid_tracker/View/detail_screen.dart';
import 'package:covid_tracker/ViewModel/world_sates_view_model.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountriesListScreen extends StatefulWidget {
  const CountriesListScreen({Key? key}) : super(key: key);

  @override
  _CountriesListScreenState createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  TextEditingController searchController = TextEditingController();
   String _searchText = '';

  @override
  Widget build(BuildContext context) {
    Autogenerateddata newsListViewModel = Autogenerateddata();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children:<Widget> [
             SizedBox(height: 50),
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
                  onSuggestionSelected: (City city) {
                    searchController.text = city.name;
                    _searchText = city.name;
                    _searchCity(_searchText);
                  },
                ),
                    
          ],
        ),
      ),
    );
  }
}
