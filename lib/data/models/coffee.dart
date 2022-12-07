class Coffee{
  final String title;
  final String description;
  final List<String> ingredients;
  final String image;
  final int id;

  Coffee(this.title, this.description, this.ingredients, this.image, this.id);

  factory Coffee.fromJson(Map<String, dynamic> json) => Coffee(
    json["title"],
    json["description"],
    json["ingredients"],
    json["image"],
    json["id"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "ingredients": ingredients,
    "image": image,
    "id": id,
  };
}