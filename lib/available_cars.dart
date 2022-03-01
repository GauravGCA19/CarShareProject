import 'package:flutter/material.dart';
import './data.dart';
import './widgets/car_widget.dart';

class AvailableCars extends StatefulWidget {
  const AvailableCars({Key? key}) : super(key: key);

  @override
  _AvailableCarsState createState() => _AvailableCarsState();
}

class _AvailableCarsState extends State<AvailableCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('All Listings'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              Text(
                'Available Cars: ${getCarList().length.toString()}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                physics: const BouncingScrollPhysics(),
                childAspectRatio: 1 / 1.45,
                crossAxisSpacing: 0,
                mainAxisSpacing: 15,
                children: getCarList().map((item) {
                  return showCar(item, -1, context);
                }).toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
