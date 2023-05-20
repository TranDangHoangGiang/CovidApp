import 'dart:convert';
import 'package:covid_tracker/Model/covid.dart';
import 'package:http/http.dart' as http;

class Autogenerateddata {
  Future<Autogenerated> fetchWorldRecords() async {
    final response = await http.get(Uri.parse('https://static.pipezero.com/covid/data.json'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Autogenerated.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
  Future<Autogenerated> fetchWorldRecords() async {
    final response = await http.get(Uri.parse('https://static.pipezero.com/covid/data.json'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Autogenerated.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }


 
}