import 'package:ark_module_setup/ark_module_setup.dart';

class InstructorDTO extends InstructorEntity {
  const InstructorDTO({
    required super.id,
    required super.name,
    required super.avatar,
    required super.sub,
  });

  factory InstructorDTO.fromJson(Map<String, dynamic> json) => InstructorDTO(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        avatar: json["avatar"].runtimeType == String || json["avatar"] == null
            ? const AvatarDTO(url: "")
            : AvatarDTO.fromJson(json["avatar"]),
        sub: json["sub"] ?? "",
      );
}

class AvatarDTO extends AvatarEntity {
  const AvatarDTO({
    required super.url,
  });

  factory AvatarDTO.fromJson(Map<String, dynamic> json) => AvatarDTO(
        url: json["url"],
      );
}
