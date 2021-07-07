class Producer {
  String name;
  String logo;
  String description;
  String distance;
  List packages;

  Producer({
    this.name,
    this.description,
    this.logo,
    this.distance,
    this.packages
  });

  factory Producer.fromJson(Map<String, dynamic> parsedJson){

    return Producer(
      name: parsedJson['name'],
      logo : parsedJson['logo'],
      description : parsedJson['description'],
      distance : parsedJson['distance'],
      packages : parsedJson['packages'],
    );
  }
}