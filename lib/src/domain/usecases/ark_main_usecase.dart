import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:ark_module_setup/src/domain/repositories/ark_main_repository.dart';
import 'package:dartz/dartz.dart';

class ArkMainUseCase {
  final ArkMainRepository repository;

  ArkMainUseCase(this.repository);

  Future<Either<Failures, RemoteConfigEntity>> getRemoteConfig() async =>
      await repository.getRemoteConfig();
}
