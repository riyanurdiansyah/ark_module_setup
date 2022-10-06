import 'package:ark_module_setup/src/data/dto/remote_config_dto.dart';

abstract class ArkMainRemoteDataSource {
  Future<RemoteConfigDTO> getRemoteConfig();
}
