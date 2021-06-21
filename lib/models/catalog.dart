class CatalogModel {
  static final items = [
     Item(
          id: 1,
          name: "Dumbbell",
          desc: "Amazing instrument for workout ",
          price: 20,
          color: "#355505a",
          image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsjjgjxpZ7hySOG1Nk0w2uE96O48bU0xeNWg&usqp=CAU")
          ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}