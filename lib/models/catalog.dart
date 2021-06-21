class CatalogModel {
  static  List<Item> items = [
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

  //For mapping the json data
factory Item.fromMap(Map<String, dynamic> map){
  return  Item(
    //Item class var:Database var//
      id :  map["id"],
      name : map['name'],
      price : map['price'],
      desc : map['desc'],
      color : map['color'],
      image : map['image']
    );

}

    // toMap() =>  {
    //   'id': id,
    //   'name': name,
    //   'desc': desc,
    //   'price': price,
    //   'color': color,
    //   'image': image,
    // };


}