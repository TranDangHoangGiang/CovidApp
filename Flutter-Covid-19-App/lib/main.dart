import 'dart:io';

import 'package:covid_tracker/View/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
      name: 'covid_tracker',
      options: Platform.isMacOS || Platform.isIOS
          ? FirebaseOptions(
              apiKey: 'AIzaSyCyrclxF4ShCy8WR6oi2n2KTPcqY-hzMsw',
              appId: 'IOS KEY',
              messagingSenderId: '578662257788',
              projectId: 'covid-app-bf36f',
              databaseURL:
                  'https://covid-app-bf36f-default-rtdb.asia-southeast1.firebasedatabase.app/')
          : FirebaseOptions(
              apiKey: 'AIzaSyCyrclxF4ShCy8WR6oi2n2KTPcqY-hzMsw',
              appId: '1:578662257788:android:cc7028a03e3b77d7b025f9',
              messagingSenderId: '578662257788',
              projectId: 'covid-app-bf36f',
              databaseURL:
                  'https://covid-app-bf36f-default-rtdb.asia-southeast1.firebasedatabase.app/'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, userSnapshot) {
            if (userSnapshot.hasData) {
              return SplashScreen();
            }
            return AuthScreen();
          }),
    );
  }
}
