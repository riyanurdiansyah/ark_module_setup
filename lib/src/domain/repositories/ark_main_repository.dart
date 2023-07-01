import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ArkMainRepository {
  Future<Either<Failures, RemoteConfigEntity>> getRemoteConfig();
}
