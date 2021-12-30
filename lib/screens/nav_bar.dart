import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('neat-soft.com'),
            accountEmail: Text('mingu.lee@neat-soft.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(image: AssetImage('images/logo_icon.png'), fit: BoxFit.cover)
                ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/profile_bg.png')
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}