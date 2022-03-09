import 'package:flutter/material.dart';

class Car {
  String brand;
  String model;
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.price, this.condition, this.images);
}

List<Car> getCarList() {
  return <Car>[
    Car(
      "Land Rover",
      "Discovery",
      2580,
      "Weekly",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Car(
      "Alfa Romeo",
      "C4",
      3580,
      "Monthly",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
    ),
    Car(
      "Nissan",
      "GTR",
      1100,
      "Daily",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
    ),
    Car(
      "Acura",
      "MDX 2020",
      2200,
      "Monthly",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
    ),
    Car(
      "Chevrolet",
      "Camaro",
      3400,
      "Weekly",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
    ),
    Car(
      "Ferrari",
      "Spider 488",
      4200,
      "Weekly",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      2300,
      "Weekly",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
    ),
    Car(
      "Fiat",
      "500x",
      1450,
      "Weekly",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
    ),
    Car(
      "Honda",
      "Civic",
      900,
      "Daily",
      [
        "assets/images/honda_0.png",
      ],
    ),
    Car(
      "Citroen",
      "Picasso",
      1200,
      "Monthly",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
    ),
  ];
}

class Brand {
  String brand;
  String image;

  Brand(this.brand, this.image);
}

List<Brand> getBrandList() {
  return <Brand>[
    Brand(
      "Land Rover",
      "assets/images/brands/land_rover.png",
    ),
    Brand(
      "Alfa Romeo",
      "assets/images/brands/alfa_romeo.png",
    ),
    Brand(
      "Nissan",
      "assets/images/brands/nissan.png",
    ),
    Brand(
      "Acura",
      "assets/images/brands/acura.png",
    ),
    Brand(
      "Audi",
      "assets/images/brands/audi.png",
    ),
    Brand(
      "BMW",
      "assets/images/brands/bmw.png",
    ),
    Brand(
      "Chevrolet",
      "assets/images/brands/chevrolet.png",
    ),
    Brand(
      "Ferrari",
      "assets/images/brands/ferrari.png",
    ),
    Brand(
      "Ford",
      "assets/images/brands/ford.png",
    ),
    Brand(
      "Fiat",
      "assets/images/brands/fiat.png",
    ),
    Brand(
      "Honda",
      "assets/images/brands/honda.png",
    ),
    Brand(
      "Citroen",
      "assets/images/brands/citroen.png",
    ),
    Brand(
      "Hyundai",
      "assets/images/brands/hyundai.png",
    ),
    Brand(
      "Kia",
      "assets/images/brands/kia.png",
    ),
    Brand(
      "Mercedes",
      "assets/images/brands/mercedes.png",
    ),
    Brand(
      "Suzuki",
      "assets/images/brands/suzuki.png",
    ),
    Brand(
      "Tata",
      "assets/images/brands/tata.png",
    ),
    Brand(
      "Toyota",
      "assets/images/brands/toyota.png",
    ),
    Brand(
      "Volkswagen",
      "assets/images/brands/volkswagen.png",
    ),
  ];
}


// void main() {
//   List car = [];
//   for (int i = 0; i < getCarList().length; i++) {
//     car.add(getCarList()[i].brand);
//   }
//    List<Dealer> brands = [];

//   brands.addAll(getDealerList());

//   for(int i = 0; i < getDealerList().length; i++){

//    if(!car.contains(getDealerList()[i].name)){
//       brands.removeAt(i);
//     }
//   }
  
//   print(brands[brands.length-1].name);
//   print(getDealerList()[getDealerList().length-1].name);
//}