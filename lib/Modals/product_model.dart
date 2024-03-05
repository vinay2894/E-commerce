class product {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  String images;

  product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory product.fromMap({required Map data}) => product(
        id: data["id"],
        title: data["title"],
        description: data["description"],
        price: data["price"],
        discountPercentage: data["discountPercentage"]?.toDouble(),
        rating: data["rating"]?.toDouble(),
        stock: data["stock"],
        brand: data["brand"],
        category: data["category"],
        thumbnail: data["thumbnail"],
        images: data["images"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
        "images": images,
      };
}
