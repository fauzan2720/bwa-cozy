class SpaceModel {
  int? id;
  String? name;
  String? city;
  String? country;
  int? price;
  String? imageUrl;
  int? rating;
  String? address;
  String? phone;
  String? mapUrl;
  List<String>? photos;
  int? numberOfKitchens;
  int? numberOfBedrooms;
  int? numberOfCupboards;

  SpaceModel(
      {this.id,
      this.name,
      this.city,
      this.country,
      this.price,
      this.imageUrl,
      this.rating,
      this.address,
      this.phone,
      this.mapUrl,
      this.photos,
      this.numberOfKitchens,
      this.numberOfBedrooms,
      this.numberOfCupboards});

  SpaceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    imageUrl = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'].cast<String>();
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['country'] = country;
    data['price'] = price;
    data['image_url'] = imageUrl;
    data['rating'] = rating;
    data['address'] = address;
    data['phone'] = phone;
    data['map_url'] = mapUrl;
    data['photos'] = photos;
    data['number_of_kitchens'] = numberOfKitchens;
    data['number_of_bedrooms'] = numberOfBedrooms;
    data['number_of_cupboards'] = numberOfCupboards;
    return data;
  }
}
