import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('edit'),
      ),
      body: const Center(
        child: Icon(
          Icons.mode_edit,
          size: 150,
        ),
      ),
    );
  }
}