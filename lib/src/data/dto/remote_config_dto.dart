import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';

class RemoteConfigDTO extends RemoteConfigEntity {
  const RemoteConfigDTO({
    required super.apiBaru,
    required super.baseUrl,
    required super.forceLogout,
    required super.homeCache,
    required super.isChecking,
    required super.isImportant,
    required super.isMaintenance,
    required super.isPrakerjaMaintenance,
    required super.newVersion,
    required super.prakerjaBaseUrl,
  });

  factory RemoteConfigDTO.fromJson(Map<String, dynamic> json) =>
      RemoteConfigDTO(
        apiBaru: json['api_baru'],
        baseUrl: json['baseUrl'],
        forceLogout: json['force_logout'],
        homeCache: json['home_cache'],
        isChecking: json['is_checking'],
        isImportant: json['is_important'],
        isMaintenance: json['is_maintenance'],
        isPrakerjaMaintenance: json['is_prakerja_maintenance'],
        newVersion: double.parse(json['new_version']),
        prakerjaBaseUrl: json['prakerja_base_url'],
      );
}
