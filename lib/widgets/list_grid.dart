import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  ListGrid({super.key});

  List<String> fruits = [
    'orange',
    'Banana',
    'Mango',
    'WoodApple',
    'PineApple',
    'WaterLemon',
  ];

  Map fruits_value = {
    'fruits': [
      'orange',
      'Banana',
      'Mango',
      'WoodApple',
      'PineApple',
      'WaterLemon',
    ],
    'names': ['ACI', 'SQUARE', 'SHAWPNO', 'DHAKA', 'BANANI', 'GULSHAN'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid View'),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.location_city),
        //         title: Text(fruits_value['fruits'][index]),
        //         subtitle: Text(fruits_value['names'][index]),
        //         onTap: () {
        //           print(Text(fruits_value['fruits'][index]));
        //         },
        //       ),
        //     );
        //   },
        // ),
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 20,
        //     childAspectRatio: 2 / 3,
        //   ),
        //   children: [
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //     Card(child: Center(child: Text('orange'))),
        //   ],
        // ),
        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(child: Center(child: Text(fruits[index])));
          },
        ),
      ),
    );
  }
}
