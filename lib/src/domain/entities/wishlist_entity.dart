import 'dart:convert';

import 'package:ark_module_setup/src/domain/entities/wishlist_course_entity.dart';

String wishlistEntityToJson(WishlistEntity data) => json.encode(data.toJson());

class WishlistEntity {
  WishlistEntity({
    required this.success,
    required this.data,
  });

  final bool success;
  final List<WishlistDataEntity> data;

  WishlistEntity copyWith({
    bool? success,
    List<WishlistDataEntity>? data,
  }) =>
      WishlistEntity(
        success: success ?? this.success,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class WishlistDataEntity {
  WishlistDataEntity({
    required this.id,
    required this.userId,
    required this.courseId,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.course,
    required this.categoryId,
  });

  int id;
  String userId;
  String courseId;
  String productId;
  DateTime createdAt;
  DateTime updatedAt;
  WishlistCourseEntity course;
  List<int> categoryId;

  WishlistDataEntity copyWith({
    int? id,
    String? userId,
    String? courseId,
    String? productId,
    DateTime? createdAt,
    DateTime? updatedAt,
    WishlistCourseEntity? course,
    List<int>? categoryId,
  }) =>
      WishlistDataEntity(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        courseId: courseId ?? this.courseId,
        productId: productId ?? this.productId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        course: course ?? this.course,
        categoryId: categoryId ?? this.categoryId,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "course_id": courseId,
        "product_id": productId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "course": course.toJson(),
        "category_id": List<dynamic>.from(categoryId.map((x) => x)),
      };
}
