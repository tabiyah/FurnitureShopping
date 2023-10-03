import 'package:flutter/material.dart';

class GridItemModel {
  String name;
  String image;
  final price;
  GridItemModel({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<GridItemModel> gitems = [
  GridItemModel(
      name: "Black Simole Lamp", image: "assets/lamp.png", price: 12.0),
  GridItemModel(
      name: "Black Simole Lamp", image: "assets/lamp.png", price: 12.0),
  GridItemModel(
      name: "Black Simole Lamp", image: "assets/lamp.png", price: 12.0),
  GridItemModel(
      name: "Black Simole Lamp", image: "assets/lamp.png", price: 12.0),
  GridItemModel(
      name: "Black Simole Lamp", image: "assets/lampsh.png", price: 12.0),
];
