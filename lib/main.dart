import 'package:flutter/material.dart';
import 'package:test_app/widgets/alert.dart';
import 'package:test_app/widgets/bottomNav.dart';
import 'package:test_app/widgets/bottomSheet.dart';
import 'package:test_app/widgets/button.dart';
import 'package:test_app/widgets/dismissible.dart';
import 'package:test_app/widgets/drawer.dart';
import 'package:test_app/widgets/dropDown.dart';
import 'package:test_app/widgets/image.dart';
import 'package:test_app/widgets/list_grid.dart';
import 'package:test_app/widgets/row_cols.dart';
import 'package:test_app/widgets/snackbar.dart';

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

      home: DropDownWidget(),
    );
  }
}
