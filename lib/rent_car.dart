import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './data.dart';

import 'package:intl/intl.dart';

class RentCar extends StatefulWidget {
  // const RentCar({Key? key}) : super(key: key);

  final Car car;

  RentCar({required this.car});

  @override
  _RentCarState createState() => _RentCarState();
}

class _RentCarState extends State<RentCar> {
  int _currentImage = 0;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < widget.car.images.length; i++) {
      list.add(buildIndicator(i == _currentImage));
    }
    return list;
  }

  Widget buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.purple : Colors.grey[400],
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Rent Car'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,

          //main column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  'Rent This Car',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (int page) {
                      setState(() {
                        _currentImage = page;
                      });
                    },
                    children: widget.car.images.map((path) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Image.asset(
                          path,
                          fit: BoxFit.scaleDown,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              widget.car.images.length > 1
                  ? Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildPageIndicator(),
                      ),
                    )
                  : Container(),

              //first component after img
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.car.brand,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      widget.car.model,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),

              //second component
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rent Date',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'From: ${bookingTime()}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),

              //third component
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Nayabazar 3380, Pokhara',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Icon(
                      Icons.location_on,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),

      //payment section
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rs. ${widget.car.price.toString()}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Rent Now',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ),
          ],
        ),
      ),
    );
  }

  String bookingTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yMd').format(now);

    return formattedDate;
  }
}
