import 'package:ark_module_setup/src/domain/entities/course_flag_entity.dart';

class CourseFlagDTO extends CourseFlagEntity {
  CourseFlagDTO({
    required super.whatsapp,
    required super.prakerja,
    required super.revamp,
    required super.jrc,
    required super.group,
  });

  factory CourseFlagDTO.fromJson(Map<String, dynamic> json) => CourseFlagDTO(
        whatsapp: json["whatsapp"] ?? "",
        prakerja: json["prakerja"] ?? "",
        revamp: json["revamp"] ?? "",
        jrc: json["jrc"] ?? "",
        group: json["group"] ?? "",
      );
}
