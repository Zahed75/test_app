import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomSheet')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0,
              isDismissible: true,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Dash',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Withdraw',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'last amount',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Payout',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Payoneer',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
