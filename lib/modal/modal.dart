class planet {
  String? position;
  String? name;
  String? image;
  String? velocity;
  String? distance;
  String? description;

  planet(
      {required this.name,
      required this.position,
      required this.description,
      required this.image,
      required this.distance,
      required this.velocity});

  factory planet.fromMap({required Map<String, dynamic> data}) {
    return planet(
        name: data['name'],
        position: data['position'],
        description: data['description'],
        image: data['image'],
        distance: data['distance'],
        velocity: data['velocity']);
  }
}
