import 'package:flutter/material.dart';

class ListCarScreen extends StatefulWidget {
  const ListCarScreen({Key? key}) : super(key: key);

  @override
  _ListCarScreenState createState() => _ListCarScreenState();
}

class _ListCarScreenState extends State<ListCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Your Car'),
      ),
    );
  }
}
