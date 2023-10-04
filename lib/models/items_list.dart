class ItemModel {
  final String name;
  final String image;
  const ItemModel({
    required this.name,
    required this.image,
  });
}

List<ItemModel> categories = [
  const ItemModel(
    name: "Favorites",
    image: "assets/Vector.png",
  ),
  const ItemModel(
    name: "Chair",
    image: "assets/chair.png",
  ),
  const ItemModel(
    name: "Table",
    image: "assets/table.png",
  ),
  const ItemModel(
    name: "ArmChair",
    image: "assets/sofa.png",
  ),
  const ItemModel(
    name: "Bed",
    image: "assets/bed.png",
  ),
  const ItemModel(
    name: "Lamp",
    image: "assets/bed.png",
  ),
];
