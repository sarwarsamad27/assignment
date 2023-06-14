import 'package:flutter/material.dart';
import 'package:navigation_files/screen_one.dart';
import 'package:navigation_files/screen_two.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: screen_one ()
      initialRoute: screen_one.id,
      routes: {
        screen_one.id: (context) => screen_one(),
        screen_two.id: (context) => screen_two()
      }
    );
  }
}
