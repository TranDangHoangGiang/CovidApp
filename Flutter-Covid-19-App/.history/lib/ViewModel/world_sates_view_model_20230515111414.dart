import 'dart:convert';
import 'package:covid_tracker/Model/countries_list_model.dart';
import 'package:covid_tracker/Model/covid.dart';
import 'package:covid_tracker/Model/world_states.dart';
import 'package:http/http.dart' as http;

class WorldStatesViewModel {
  Future<Autogenerated> fetchWorldRecords() async {
    final response = await http.get(Uri.parse('https://static.pipezero.com/covid/data.json'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data)
      return Autogenerated.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

 
}
