import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/domain/entities/mplink_entity.dart';

class MpLinkDTO extends MpLinkEntity {
  MpLinkDTO({
    required super.mpName,
    required super.mpLogo,
    required super.mpProdukLink,
  });

  factory MpLinkDTO.fromJson(Map<String, dynamic> json) => MpLinkDTO(
        mpName: json["mp_name"] ?? '',
        mpLogo: json["mp_logo"] ?? '',
        mpProdukLink: json["mp_produk_link"] ?? '',
      );
}
