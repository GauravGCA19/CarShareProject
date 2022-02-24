import 'package:flutter/material.dart';
import './widgets/main_drawer.dart';
import './data.dart';
import './widgets/car_widget.dart';

import './register_screen.dart';

import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [HomeScreen(), RegisterScreen()];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  List<Car> cars = getCarList();

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
              'Recent Listings',
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: _selectPage,
      //   backgroundColor: Theme.of(context).primaryColor,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star),
      //       label: 'Home',
      //     ),
      //   ],
      // ),
    );
  }

  List<Widget> showDeals() {
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(showCar(cars[i], i, context));
    }
    return list;
  }

  String bookingTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);

    return formattedDate;
  }
}
