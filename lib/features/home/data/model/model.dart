class PopularCoursesModel {
  final bool? success;
  final List<Datum>? data;
  final int? total;
  final String? message;

  PopularCoursesModel({
    this.success,
    this.data,
    this.total,
    this.message,
  });

  factory PopularCoursesModel.fromJson(Map<String, dynamic> json) => PopularCoursesModel(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        total: json["total"],
        message: json["message"],
      );
}

class Datum {
  final int? id;
  final String? categoryId;
  final String? image;
  final String? metaKeywords;
  final String? metaDescription;
  final String? price;
  final String? discountPrice;
  final String? totalEnrolled;
  final String? revenue;
  final String? review;

  Datum({
    this.metaKeywords,
    this.metaDescription,
    this.id,
    this.categoryId,
    this.image,
    this.price,
    this.discountPrice,
    this.totalEnrolled,
    this.revenue,
    this.review,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        id: json["id"],
        categoryId: json["category_id"],
        image: json["image"],
        price: json["price"],
        discountPrice: json["discount_price"],
        totalEnrolled: json["total_enrolled"],
        revenue: json["reveune"],
        review: json["reveiw"],
      );
}
