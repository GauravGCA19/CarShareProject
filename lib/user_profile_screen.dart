import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './data.dart';
import 'login_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Car> cars = getCarList();
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 25),
          child: Container(
            // color: Colors.amber,
            width: double.infinity,

            //main column
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'User Id',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'gaurav4a4@gmail.com',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'First Name',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Gaurav',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Last Name',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'G.C.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Latest Booking',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      //start of elevated container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 80.0,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: const EdgeInsets.only(
                              bottom: 6.0), //Same as `blurRadius` i guess
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '${bookingTime()}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Car',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),

                                  //need to change this make it dynamic
                                  Text(
                                    '${cars[1].brand} ${cars[1].model}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //end of elevated container

                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 22),
                                primary: Theme.of(context).primaryColor),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const LoginScreen()));
                            },
                            child: Text(
                              'Sign Out',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          Icon(
                            Icons.logout_outlined,
                            size: 35,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
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
