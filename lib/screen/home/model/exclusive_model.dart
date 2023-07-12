import 'package:flutter/material.dart';
import '../../../util/assets.dart';

class Exclusive {
  final String name;
  final String price;
  final String image;
  final String quantity;

  Exclusive({
    required this.image,
    required this.price,
    required this.quantity,
    required this.name,
  });
}

List<Exclusive> exclusive = [
  Exclusive(
    image: Assets.banana,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Organic Bananas",
  ),
  Exclusive(
    image: Assets.apple,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Ginger",
  ),
  Exclusive(
    image: Assets.banana,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Organic Bananas",
  ),
  Exclusive(
    image: Assets.apple,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Red Apple",
  ),
];

List<Exclusive> bestSelling = [
  Exclusive(
    image: Assets.tomato,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Bell Pepper Red",
  ),
  Exclusive(
    image: Assets.ginger,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Red Apple",
  ),
  Exclusive(
    image: Assets.tomato,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Bell Pepper Red",
  ),
  Exclusive(
    image: Assets.ginger,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Ginger",
  ),
];

List<Exclusive> meatList = [
  Exclusive(
    image: Assets.chicken,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Beef Boneless",
  ),
  Exclusive(
    image: Assets.beef,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Broiler Chicken",
  ),
  Exclusive(
    image: Assets.chicken,
    price: "\$4.99",
    quantity: "7pcs, Price",
    name: "Beef Boneless",
  ),
  Exclusive(
    image: Assets.beef,
    price: "\$4.99",
    quantity: "1kg, Price",
    name: "Broiler Chicken",
  ),
];

class Grocery {
  final String name;
  final String image;
  final Color color;

  Grocery({
    required this.image,
    required this.color,
    required this.name,
  });
}

List<Grocery> groceryList = [
  Grocery(
    image: Assets.pulse,
    color: const Color(0xffF8A44C),
    name: "Pulses",
  ),
  Grocery(
    image: Assets.rice,
    color: const Color(0xff53B175),
    name: "Rice",
  ),
  Grocery(
    image: Assets.pulse,
    color: const Color(0xffF8A44C),
    name: "Pulses",
  ),
  Grocery(
    image: Assets.rice,
    color: const Color(0xff53B175),
    name: "Rice",
  ),
];

List<Grocery> exploreList = [
  Grocery(
    image: Assets.fruits,
    color: const Color(0xff418D5D),
    name: "Fresh Fruits& Vegetable",
  ),
  Grocery(
    image: Assets.oil,
    color: const Color(0xffF8A44C),
    name: "Cooking Oil& Ghee",
  ),
  Grocery(
    image: Assets.meat,
    color: const Color(0xffF7A593),
    name: "Meat & Fish",
  ),
  Grocery(
    image: Assets.snacks,
    color: const Color(0xffD3B0E0),
    name: "Bakery & Snacks",
  ),
  Grocery(
    image: Assets.diary,
    color: const Color(0xffFDE598),
    name: "Dairy & Eggs",
  ),
  Grocery(
    image: Assets.drinks,
    color: const Color(0xffB7DFF5),
    name: "Beverages",
  ),
];
