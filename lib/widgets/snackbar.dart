import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar')),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                backgroundColor: Colors.purple,
                // padding: EdgeInsets.all(30),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                duration: const Duration(seconds: 3),
                content: Text('Borsha chuki chuki leuri babu hae'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
