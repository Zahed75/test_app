import 'package:flutter/material.dart';

class VisaCardWidget extends StatefulWidget {
  const VisaCardWidget({super.key});

  @override
  State<VisaCardWidget> createState() => _VisaCardWidgetState();
}

class _VisaCardWidgetState extends State<VisaCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VISA Card Details')),
      body: Container(),
    );
  }
}
