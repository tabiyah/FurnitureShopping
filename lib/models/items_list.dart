class ItemModel {
  final String name;
  final String image;
  final bool select;
  const ItemModel({
    required this.name,
    required this.image,
    required this.select,
  });
}

List<ItemModel> categories = [
  const ItemModel(
    name: "Favorites",
    image: "assets/Vector.png",
    select: false,
  ),
  const ItemModel(
    name: "Chair",
    image: "assets/chair.png",
    select: false,
  ),
  const ItemModel(
    name: "Table",
    image: "assets/table.png",
    select: false,
  ),
  const ItemModel(
    name: "ArmChair",
    image: "assets/sofa.png",
    select: false,
  ),
  const ItemModel(
    name: "Bed",
    image: "assets/bed.png",
    select: false,
  ),
  const ItemModel(
    name: "Lamp",
    image: "assets/bed.png",
    select: false,
  ),
];
