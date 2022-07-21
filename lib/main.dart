import 'package:flutter/material.dart';
import 'package:navigation_drawer_flutter/home_screen.dart';
import 'package:navigation_drawer_flutter/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation drawer demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: HomeScreen.id,
     routes: {
        HomeScreen.id : (context) => HomeScreen(),
        ScreenTwo.id : (context) => ScreenTwo()
     },
     // home: HomeScreen(),
    );
  }
}

