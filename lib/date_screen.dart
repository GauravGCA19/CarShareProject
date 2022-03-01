import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Date'),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
