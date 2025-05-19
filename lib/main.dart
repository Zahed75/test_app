import 'package:flutter/material.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/widgets/imagePicker.dart';
import 'package:test_app/widgets/location.dart';
import 'package:test_app/widgets/tabBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white, // text/icon color
        ),
      ),

      home: LocationWidget(),
    );
  }
}
