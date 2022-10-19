import 'dart:convert';

import 'package:ark_module_setup/ark_module_setup.dart';

CategoryDTO categoryEntityFromJson(String str) =>
    CategoryDTO.fromJson(json.decode(str));

class CategoryDTO extends CategoryEntity {
  const CategoryDTO({
    required super.status,
    required super.data,
  });
  factory CategoryDTO.fromJson(Map<String, dynamic> json) => CategoryDTO(
        status: json["status"],
        data: List<CategoryDataDTO>.from(
            json["data"].map((x) => CategoryDataDTO.fromJson(x))),
      );
}

class CategoryDataDTO extends CategoryDataEntity {
  const CategoryDataDTO({
    required super.id,
    required super.name,
    required super.slugName,
    required super.parent,
    required super.img,
    required super.count,
  });

  factory CategoryDataDTO.fromJson(Map<String, dynamic> json) =>
      CategoryDataDTO(
        id: json["id"],
        name: json["name"],
        slugName: json["slug_name"],
        parent: json["parent"],
        img: json["img"],
        count: json["count"] ?? 0,
      );
}
