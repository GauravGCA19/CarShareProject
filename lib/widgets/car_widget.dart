import 'package:flutter/material.dart';
import '../data.dart';

// class CarWidget extends StatelessWidget {
//   const CarWidget({Key? key}) : super(key: key);

Widget showCar(Car car, int index, BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    // padding: const EdgeInsets.all(10),
    margin: EdgeInsets.only(
      right: index != null ? 16 : 0,
      left: index == 0 ? 6 : 0,
    ),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          height: 120,
          child: Center(
            child: Image.asset(
              car.images[0],
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.brand,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    car.model,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                  Text(
                    'Rs. ${car.price}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

//   @override
//   Widget build(BuildContext context) {
//     return showCar(car, index);
//   }
// }
