import 'package:flutter/material.dart';

class TabBarViewWidget extends StatefulWidget {
  const TabBarViewWidget({super.key});

  @override
  State<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.message), text: 'Message'),
              Tab(icon: Icon(Icons.notification_add), text: 'Notificatio'),
              Tab(icon: Icon(Icons.map), text: 'Map'),
              Tab(icon: Icon(Icons.payment), text: 'Payment'),
              Tab(icon: Icon(Icons.logout), text: 'Logout'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home Page')),
            Center(child: Text('Messages Page')),
            Center(child: Text('Notifications Page')),
            Center(child: Text('Map Page')),
            Center(child: Text('Payments Page')),
            Center(child: Text('Logout Page')),
          ],
        ),
      ),
    );
  }
}
