import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  DateTime selectedDate = DateTime(2030);

  //function to show modal bottom sheet
  void _showModalSheet(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      isScrollControlled: true,
      builder: (bCtx) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Info of this page',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This page of date selection allows you to select a date for which you want to rent the car. After setting the date and presing the done button, you will see the cars that are only available on the date that you selected.',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Date'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,

          //main column
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.date_range_sharp,
                      size: 32,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Select Date',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                //another component
                const Text(
                  'Set the date for when you want to rent/ pick up the car',
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(
                  height: 60,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
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
                  height: 55,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: selectedDate == DateTime(2030)
                            ? showToastMsg
                            : showOtherMsg,
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
                                    borderRadius: BorderRadius.circular(30)))),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () => _showModalSheet(context),
                        child: Text(
                          'Page Info',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[100]),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w400),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: Colors.black54)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool?> showToastMsg() {
    return Fluttertoast.showToast(
        msg: "Please set the date!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Future<bool?> showOtherMsg() {
    return Fluttertoast.showToast(
        msg: "DONE",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
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
