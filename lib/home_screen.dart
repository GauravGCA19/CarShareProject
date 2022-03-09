import 'package:flutter/material.dart';
import 'package:flutter_login_design_master/available_cars.dart';
import './widgets/main_drawer.dart';
import './data.dart';
import './widgets/car_widget.dart';
import './widgets/brand_widget.dart';

import './rent_car.dart';

import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Car> cars = getCarList();
  List<Brand> allBrands = getBrandList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Car Share',
        ),
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: const MainDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Featured Listings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 250,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: showDeals(),
                      ),
                    ),

                    //show listings widget
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AvailableCars()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 16,
                          left: 16,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Show All Listings',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 220,
                                    child: const Text(
                                      'Checkout all the available listings!',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 50,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //booking widget
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 16,
                        left: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 305,
                              child: Text(
                                'Your Booking:',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${cars[1].brand} ${cars[1].model}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '${bookingTime()}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: 15,
                    // ),

                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Top Brands',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: 15,
                    // ),

                    //container for brands
                    Container(
                      height: 100,
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: showBrands(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> showDeals() {
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RentCar(car: cars[i])),
            );
          },
          child: showCar(cars[i], i, context)));
    }
    return list;
  }

  List<Widget> showBrands() {
    List<Widget> list = [];
    for (var i = 0; i < allBrands.length; i++) {
      list.add(showBrand(allBrands[i], i));
    }
    return list;
  }

  String bookingTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);

    return formattedDate;
  }
}
