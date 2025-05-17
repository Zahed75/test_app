import 'package:flutter/material.dart';

class BottomNaviWidget extends StatefulWidget {
  const BottomNaviWidget({super.key});

  @override
  State<BottomNaviWidget> createState() => _BottomNaviWidgetState();
}

class _BottomNaviWidgetState extends State<BottomNaviWidget> {
  int selectedIndex = 0;

  final List<Widget> widgets = [
    Text('Home'),
    Text('Search'),
    Text('Add'),
    Text('Profile'),
    Text('Settings'),
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation')),
      body: Center(child: widgets[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
