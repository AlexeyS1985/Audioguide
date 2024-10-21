class Dostoprimechatelnost {
  String name;
  String description;

  Dostoprimechatelnost({required this.name, required this.description});

  factory Dostoprimechatelnost.fromJson(Map<String, dynamic> json) {
    return Dostoprimechatelnost(
      name: json['name'],
      description: json['description'],
    );
  }
}