class Item {
  late final String id;
  final String name;
  final String desc;
  final num price;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color});
}

final products = [
  Item(
      id: "Flutter01",
      name: "iphone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 999,
      color: "#33505a")
];
