import 'package:ark_module_setup/ark_module_setup.dart';

class WishlistCourseEntity {
  WishlistCourseEntity({
    required this.name,
    required this.courseSlug,
    required this.regularPrice,
    required this.salePrice,
    required this.totalStudents,
    required this.averageRating,
    required this.ratingCount,
    required this.userStatus,
    required this.userExpiry,
    required this.instructors,
  });

  String name;
  String courseSlug;
  String regularPrice;
  String salePrice;
  int totalStudents;
  int averageRating;
  int ratingCount;
  String userStatus;
  String userExpiry;
  List<InstructorMyCourseEntity> instructors;

  WishlistCourseEntity copyWith({
    String? name,
    String? courseSlug,
    String? regularPrice,
    String? salePrice,
    int? totalStudents,
    int? averageRating,
    int? ratingCount,
    String? userStatus,
    String? userExpiry,
    List<InstructorMyCourseEntity>? instructors,
  }) =>
      WishlistCourseEntity(
        name: name ?? this.name,
        courseSlug: courseSlug ?? this.courseSlug,
        regularPrice: regularPrice ?? this.regularPrice,
        salePrice: salePrice ?? this.salePrice,
        totalStudents: totalStudents ?? this.totalStudents,
        averageRating: averageRating ?? this.averageRating,
        ratingCount: ratingCount ?? this.ratingCount,
        userStatus: userStatus ?? this.userStatus,
        userExpiry: userExpiry ?? this.userExpiry,
        instructors: instructors ?? this.instructors,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "course_slug": courseSlug,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "total_students": totalStudents,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "user_status": userStatus,
        "user_expiry": userExpiry,
        "instructors": List<dynamic>.from(instructors.map((x) => x.toJson())),
      };
}
