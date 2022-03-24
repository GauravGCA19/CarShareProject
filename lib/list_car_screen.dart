import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/image_input.dart';

class ListCarScreen extends StatefulWidget {
  const ListCarScreen({Key? key}) : super(key: key);

  @override
  _ListCarScreenState createState() => _ListCarScreenState();
}

class _ListCarScreenState extends State<ListCarScreen> {
  DateTime selectedDate = DateTime(2030);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Your Car'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'List your own car',
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 30,
                  // ),

                  //brand
                  Text(
                    'Brand of your car:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Brand',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(
                        Icons.car_rental,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //model
                  Text(
                    'Model of your car:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Model',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.car_repair),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //date
                  Text(
                    'Set listing date of your car:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _presnetDatePicker,
                        child: const Text(
                          'Set a Date',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                      ),
                      Text(
                        selectedDate == DateTime(2030)
                            ? 'No date set yet!'
                            : '${DateFormat.yMd().format(selectedDate)}',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //rate
                  Text(
                    'Set the rate of rent:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Renting Price',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.price_change),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //Phone number
                  Text(
                    'Enter your contact number:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.phone_android),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //pics
                  Text(
                    'Upload pictures of your car:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ImageInput(),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: null,
                  //       child: const Text(
                  //         'Upload',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //       style: ButtonStyle(
                  //           backgroundColor: MaterialStateProperty.all(
                  //               Theme.of(context).primaryColor),
                  //           padding: MaterialStateProperty.all(
                  //             const EdgeInsets.symmetric(
                  //                 horizontal: 20, vertical: 10),
                  //           ),
                  //           textStyle: MaterialStateProperty.all(
                  //             const TextStyle(
                  //                 fontSize: 22, fontWeight: FontWeight.bold),
                  //           ),
                  //           shape: MaterialStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //               RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(5)))),
                  //     ),
                  //     Container(
                  //       // constraints: BoxConstraints.expand(),
                  //       height: 80,
                  //       width: 80,
                  //       color: Colors.grey,
                  //     )
                  //   ],
                  // ),

                  const SizedBox(
                    height: 25,
                  ),

                  //done button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: null,
                          // selectedDate == DateTime(2030)
                          //     ? showToastMsg
                          //     : showOtherMsg,
                          child: const Text(
                            'Done',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30)))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _presnetDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        selectedDate = pickedDate;
      });
    });
  }
}
