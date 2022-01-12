import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            color: const Color(0xff3a3041),
            width: MediaQuery.of(context).size.width * 0.85,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff3a3041),
              ),
              child: Text("Header"),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xff3a3041),
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("Home"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      // ListView(
      //   children: const [
      //     UserAccountsDrawerHeader(
      //       accountName: Text('neat-soft.com'),
      //       accountEmail: Text('mingu.lee@neat-soft.com'),
      //       currentAccountPicture: CircleAvatar(
      //         child: ClipOval(
      //           child: Image(image: AssetImage('images/logo_icon.png'), fit: BoxFit.cover)
      //           ),
      //       ),
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         image: DecorationImage(
      //             fit: BoxFit.fill,
      //             image: AssetImage('images/profile_bg.png')
      //         ),
      //       ),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.favorite),
      //       title: Text('Favorites'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text('Friends'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.share),
      //       title: Text('Share'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.notifications),
      //       title: Text('Request'),
      //     ),
      //     Divider(),
      //     ListTile(
      //       leading: Icon(Icons.settings),
      //       title: Text('Settings'),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.description),
      //       title: Text('Policies'),
      //     ),
      //     Divider(),
      //     ListTile(
      //       title: Text('Exit'),
      //       leading: Icon(Icons.exit_to_app),
      //     ),
      //   ],
      // ),
    );
  }
}