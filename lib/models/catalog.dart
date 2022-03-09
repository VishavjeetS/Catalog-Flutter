class Item {
  late final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: "Flutter01",
        name: "iPhone 12 Pro",
        desc: "Apple iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxlbeRxSjA-eIn_bBJ5XlzdfTVZwdnY9t4up9HzmNy6BIFFsg6PLTf26aOTdBY88O9pg&usqp=CAU")
  ];
}
