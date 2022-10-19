import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/domain/entities/wishlist_course_entity.dart';

class WishlistCourseDTO extends WishlistCourseEntity {
  WishlistCourseDTO({
    required super.name,
    required super.courseSlug,
    required super.regularPrice,
    required super.salePrice,
    required super.totalStudents,
    required super.averageRating,
    required super.ratingCount,
    required super.userStatus,
    required super.userExpiry,
    required super.instructors,
  });

  factory WishlistCourseDTO.fromJson(Map<String, dynamic> json) =>
      WishlistCourseDTO(
        name: json["name"],
        courseSlug: json["course_slug"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        totalStudents: json["total_students"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        userStatus: json["user_status"],
        userExpiry: json["user_expiry"],
        instructors: List<InstructorMyCourseDTO>.from(
            json["instructors"].map((x) => InstructorMyCourseDTO.fromJson(x))),
      );
}
