import 'package:flutter/material.dart';

class StackedWidget extends StatefulWidget {
  const StackedWidget({super.key});

  @override
  State<StackedWidget> createState() => _StackedWidgetState();
}

class _StackedWidgetState extends State<StackedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stacked & Positioned')),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.amberAccent,
                ),
              ),
              Center(
                child: Container(height: 200, width: 200, color: Colors.red),
              ),
              Center(
                child: Container(height: 100, width: 100, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
