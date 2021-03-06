import 'package:flutter/material.dart';
import 'package:prototype/login.dart';
import 'package:prototype/searchPage.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://wallpapercave.com/wp/PvKBonY.jpg'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Haresh Nayak',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.book, color: Colors.deepPurple),
              title: Text('Courses'),
              onTap: () => {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SearchActivity()),)
              },
            ),
            Container(
              color: Colors.grey.shade300,
              child: ListTile(
                leading: Icon(Icons.chat, color: Colors.deepPurple),
                title: Text('Chat'),
                onTap: () => {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(title: 'Chat Box')),)
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user, color: Colors.deepPurple),
              title: Text('Profile'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Container(
              color: Colors.grey.shade300,
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.deepPurple),
                title: Text('Settings'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ),
            ListTile(
              leading: Icon(Icons.border_color, color: Colors.deepPurple),
              title: Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Container(
              color: Colors.grey.shade300,
              child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.deepPurple),
                title: Text('Logout'),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
