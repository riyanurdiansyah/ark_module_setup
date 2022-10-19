import 'dart:convert';
import 'package:ark_module_setup/src/data/dto/wishlist_course_dto.dart';
import 'package:ark_module_setup/src/domain/entities/wishlist_entity.dart';

WishlistDTO wishlistEntityFromJson(String str) =>
    WishlistDTO.fromJson(json.decode(str));

class WishlistDTO extends WishlistEntity {
  WishlistDTO({
    required super.success,
    required super.data,
  });
  factory WishlistDTO.fromJson(Map<String, dynamic> json) => WishlistDTO(
        success: json["success"],
        data: List<WishlistDataEntity>.from(
            json["data"].map((x) => WishlistDataDTO.fromJson(x))),
      );
}

class WishlistDataDTO extends WishlistDataEntity {
  WishlistDataDTO({
    required super.id,
    required super.userId,
    required super.courseId,
    required super.productId,
    required super.createdAt,
    required super.updatedAt,
    required super.course,
    required super.categoryId,
  });

  factory WishlistDataDTO.fromJson(Map<String, dynamic> json) =>
      WishlistDataDTO(
        id: json["id"] ?? 0,
        userId: json["user_id"] ?? "-",
        courseId: json["course_id"] ?? "-",
        productId: json["product_id"] ?? "-",
        createdAt: json["created_at"] == null
            ? DateTime.now()
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? DateTime.now()
            : DateTime.parse(json["updated_at"]),
        course: WishlistCourseDTO.fromJson(json["course"]),
        categoryId: List<int>.from(json["category_id"].map((x) => x)),
      );
}
