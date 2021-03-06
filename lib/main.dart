import 'package:flutter/material.dart';
import 'package:neat_cafe/screens/home.dart';
import 'package:neat_cafe/screens/search.dart';
import 'package:neat_cafe/screens/person_add.dart';
import 'package:neat_cafe/screens/chat.dart';
import 'package:neat_cafe/screens/notification.dart';
import 'package:neat_cafe/screens/edit.dart';
import 'package:neat_cafe/screens/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEAT-SOFT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NS게시판'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer:
        Container(
        color: const Color(0xff3a3041),
        width: MediaQuery.of(context).size.width * 0.8,
        child: const NavBar(),
      ),
      body: const Home(),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xfff53755),
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 25.0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute(const Search()));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person_add_alt_outlined),
                  iconSize: 25.0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute(const PersonAdd()));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.chat_outlined),
                  iconSize: 25.0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute(const Chat()));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_active_outlined),
                  iconSize: 25.0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute(const Noti()));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mode_edit_outlined),
                  iconSize: 25.0,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute(const Edit()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute(Widget pageWidget) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) => pageWidget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
