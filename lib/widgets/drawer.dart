import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: Row(children: []),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder, color: Colors.white),
                title: Text('Files', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.share, color: Colors.white),
                title: Text(
                  'Share With Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.star, color: Colors.white),
                title: Text('Favourite', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.delete, color: Colors.white),
                title: Text('Trash', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.upload, color: Colors.white),
                title: Text(
                  'Upload Your Files',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.white),
                title: Text('Messages', style: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notification_add, color: Colors.white),
                title: Text(
                  'Your Notification',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text('Drawer')),
      body: Container(child: Center(child: Text('Hello'))),
    );
  }
}
