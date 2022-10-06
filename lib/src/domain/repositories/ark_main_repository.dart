import 'package:ark_module_setup/src/core/core/failures.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ArkMainRepository {
  Future<Either<Failure, RemoteConfigEntity>> getRemoteConfig();
}
