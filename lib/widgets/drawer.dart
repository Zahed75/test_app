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
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://zayanori.com/wp-content/uploads/2025/05/Zayanori_logo-02.png',
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zayanori',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'business.zayanori@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[900],
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
