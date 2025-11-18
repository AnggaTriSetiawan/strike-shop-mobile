import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    String name;
    int price;
    String description;
    String thumbnail;
    String category;
    bool isFeatured;
    int productViews;
    int stock;
    String brand;
    int views;
    String rating;
    int userId;

    ProductEntry({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.thumbnail,
        required this.category,
        required this.isFeatured,
        required this.productViews,
        required this.stock,
        required this.brand,
        required this.views,
        required this.rating,
        required this.userId,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        isFeatured: json["is_featured"],
        productViews: json["product_views"],
        stock: json["stock"],
        brand: json["brand"],
        views: json["views"],
        rating: json["rating"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "is_featured": isFeatured,
        "product_views": productViews,
        "stock": stock,
        "brand": brand,
        "views": views,
        "rating": rating,
        "user_id": userId,
    };
}
