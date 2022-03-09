import 'package:flutter/material.dart';
import '../data.dart';

Widget showBrand(Brand brand, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
    width: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(brand.image),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Text(
            brand.brand,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
        )
      ],
    ),
  );
}
