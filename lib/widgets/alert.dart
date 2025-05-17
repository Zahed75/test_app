import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Box Setup')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          child: Text('Tap'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.grey,
        title: Text('Ghorur Gash'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Ghorur Gash Company'),
              Text('This is Ghorur Gash'),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Approve')),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
