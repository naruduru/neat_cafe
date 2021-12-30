import 'package:flutter/material.dart';

class PersonAdd extends StatefulWidget {
  const PersonAdd({Key? key}) : super(key: key);

  @override
  _PersonAddState createState() => _PersonAddState();
}

class _PersonAddState extends State<PersonAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('person_add'),
      ),
      body: const Center(
        child: Icon(
          Icons.person_add_alt,
          size: 150,
        ),
      ),
    );
  }
}