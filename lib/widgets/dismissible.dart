import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  DismissibleWidget({super.key});

  List<String> fruits = ['Mango', 'Orange', 'Apple', 'Watermelon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Action')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            key: Key(fruit),
            background: Container(color: Colors.red), // Swiping left-to-right
            secondaryBackground: Container(
              color: Colors.green,
            ), // Swiping right-to-left
            onDismissed: (direction) {
              final removedItem = fruits[index];
              fruits.removeAt(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$removedItem dismissed'),
                  backgroundColor:
                      direction == DismissDirection.startToEnd
                          ? Colors.red
                          : Colors.green,
                ),
              );
            },
            child: Card(child: ListTile(title: Text(fruit))),
          );
        },
      ),
    );
  }
}
