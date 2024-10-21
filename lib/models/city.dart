class City {
  String name;
  String description;

  City({required this.name, required this.description});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['name'],
      description: json['description'],
    );
  }
}