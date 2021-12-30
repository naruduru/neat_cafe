import 'package:flutter/material.dart';

class My extends StatefulWidget {
  const My({Key? key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.person,
      size: 150,
    );
  }
}