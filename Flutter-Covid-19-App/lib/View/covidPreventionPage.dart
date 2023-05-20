import 'package:flutter/material.dart';

class CovidPreventionPage extends StatelessWidget {
  final List<String> symptoms = [
    'Fever',
    'Cough',
    'Shortness of breath',
    'Fatigue',
    'Muscle or body aches',
    'Headache',
  ];

  final List<String> preventionTips = [
    'Wash your hands frequently',
    'Wear a face mask',
    'Practice social distancing',
    'Cover your mouth and nose when coughing or sneezing',
    'Clean and disinfect frequently-touched objects and surfaces',
    'Get vaccinated',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Prevention'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Symptoms',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: symptoms.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.check),
                  title: Text(symptoms[index]),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Prevention Tips',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: preventionTips.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.check),
                  title: Text(preventionTips[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
