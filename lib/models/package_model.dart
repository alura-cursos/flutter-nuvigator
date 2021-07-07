class Package {
  String title;
  String description;
  List items;
  String price;

  Package({
    this.title,
    this.description,
    this.items,
    this.price
  });

  factory Package.fromJson(Map<String, dynamic> parsedJson){

    return Package(
      title: parsedJson['title'],
      price: parsedJson['price'],
      items: parsedJson['items'],
      description : parsedJson['description'],
    );
  }
}
