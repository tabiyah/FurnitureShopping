import 'package:flutter/material.dart';

class ItemModel {
  String name;
  String image;
  ItemModel({
    required this.name,
    required this.image,
  });
}

List<ItemModel> items = [
  ItemModel(
    name: "Favorites",
    image: "assets/Vector.png",
  ),
  ItemModel(
    name: "Chair",
    image: "assets/chair.png",
  ),
  ItemModel(
    name: "Table",
    image: "assets/table.png",
  ),
  ItemModel(
    name: "ArmChair",
    image: "assets/sofa.png",
  ),
  ItemModel(
    name: "Bed",
    image: "assets/bed.png",
  ),
  ItemModel(
    name: "Lamp",
    image: "assets/bed.png",
  ),
];
