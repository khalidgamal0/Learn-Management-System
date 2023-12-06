class SpecificCoursesModel {
  final bool? success;
  final List<Datum>? data;
  final int? total;
  final String? message;

  SpecificCoursesModel({
    this.success,
    this.data,
    this.total,
    this.message,
  });

  factory SpecificCoursesModel.fromJson(Map<String, dynamic> json) =>
      SpecificCoursesModel(
        success: json["success"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        total: json["total"],
        message: json["message"],
      );
}

class Datum {
  final int? id;
  final String? categoryId;
  final String? subcategoryId;
  final String? image;
  final String? price;
  final String? courseCategory;
  final String? totalEnrolled;
  final String? revenue;
  final String? review;
  final String? totalRating;
  final double? points;
  final int? totalLessons;
  final bool? isEnrolled;

  Datum({
    this.id,
    this.categoryId,
    this.subcategoryId,
    this.image,
    this.price,
    this.courseCategory,
    this.totalEnrolled,
    this.review,
    this.revenue,
    this.totalRating,
    this.points,
    this.totalLessons,
    this.isEnrolled,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        image: json["image"],
        price: json["price"],
        courseCategory: json["course_category"],
        totalEnrolled: json["total_enrolled"],
        revenue: json["reveune"],
        review: json["reveiw"],
        totalRating: json["total_rating"],
        points: json["points"]?.toDouble(),
        totalLessons: json["total_lessons"],
        isEnrolled: json["is_enrolled"],
      );
}
