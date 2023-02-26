import 'dart:convert';

List<Animal> animalFromJson(String str) => List<Animal>.from(json.decode(str).map((x) => Animal.database(data: x)));

List<Animal> animalJson(String str) => List<Animal>.from(json.decode(str).map((x) => Animal.fromMap(data: x)));

class Animal {
  String? name;
  String? locations;
  String? color;
  String? skinType;
  String? length;
  String? weight;

  String? topSpeed;
  String? image;

  Animal({
    required this.name,
    required this.color,
    required this.skinType,
    required this.topSpeed,
    required this.length,
    required this.weight,
    this.image,
  });

  factory Animal.fromMap({required Map data}) {
    return Animal(
      name: data["name"],
      topSpeed: data["characteristics"]["top_speed"] ?? "25 km/h",
      skinType: data["characteristics"]["skin_type"] ?? "25 km/h",
      color: data["characteristics"]["color"] ?? "white",
      length: data["characteristics"]["length"] ?? "22",
      weight: data["characteristics"]["weight"] ?? "22",
    );
  }

  factory Animal.database({required Map data}) {
    return Animal(
      name: data["name"],
      image: data["image"],
      topSpeed: data["top_speed"],
      skinType: data["skin_type"],
      color: data["color"],
      length: data["length"],
      weight: data["weight"],
    );
  }
}
