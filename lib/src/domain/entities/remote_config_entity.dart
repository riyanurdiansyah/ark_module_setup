import 'package:equatable/equatable.dart';

class RemoteConfigEntity extends Equatable {
  final bool apiBaru;
  final String baseUrl;
  final bool forceLogout;
  final bool homeCache;
  final String isChecking;
  final String isImportant;
  final String isMaintenance;
  final bool isPrakerjaMaintenance;
  final double newVersion;
  final String prakerjaBaseUrl;

  const RemoteConfigEntity({
    required this.apiBaru,
    required this.baseUrl,
    required this.forceLogout,
    required this.homeCache,
    required this.isChecking,
    required this.isImportant,
    required this.isMaintenance,
    required this.isPrakerjaMaintenance,
    required this.newVersion,
    required this.prakerjaBaseUrl,
  });

  @override
  List<Object?> get props => [
        apiBaru,
        baseUrl,
        forceLogout,
        homeCache,
        isChecking,
        isImportant,
        isMaintenance,
        isPrakerjaMaintenance,
        newVersion,
        prakerjaBaseUrl
      ];
}
