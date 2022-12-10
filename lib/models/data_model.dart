class DataModel {
  final String name;
  final String img;
  final String description;
  final String location;
  final int price;
  final int people;
  final int stars;

  DataModel({
    required this.name,
    required this.img,
    required this.description,
    required this.location,
    required this.price,
    required this.people,
    required this.stars,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json['name'],
      img: 'http://mark.bslmeiyu.com/uploads/${json['img']}',
      description: json['description'],
      location: json['location'],
      price: json['price'],
      people: json['people'],
      stars: json['stars'],
    );
  }
}
