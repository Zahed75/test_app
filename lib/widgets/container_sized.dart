import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container and Sized Box')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.blueGrey,
              ),
            ],
          ),

          child: Center(child: Container(color: Colors.redAccent)),
        ),
      ),
    );
  }
}
