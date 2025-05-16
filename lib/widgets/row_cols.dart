import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Column')),
      body: SizedBox(
        height: h,
        width: w,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // direction: Axis.horizontal,
            // alignment: WrapAlignment.end,
            children: [
              Container(height: 60, width: 60, color: Colors.blue),
              Container(height: 60, width: 60, color: Colors.black),
              Container(height: 60, width: 60, color: Colors.deepPurple),
              Container(height: 60, width: 60, color: Colors.orange),
              Container(height: 60, width: 60, color: Colors.amber),
              Container(height: 60, width: 60, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
