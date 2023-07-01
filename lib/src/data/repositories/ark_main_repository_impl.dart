import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/data/datasource/remote/ark_main_remote_datasource.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:ark_module_setup/src/domain/repositories/ark_main_repository.dart';
import 'package:dartz/dartz.dart';

class ArkMainRepositoryImpl implements ArkMainRepository {
  final ArkMainRemoteDataSource dataSource;

  ArkMainRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failures, RemoteConfigEntity>> getRemoteConfig() async {
    try {
      final remoteConfig = await dataSource.getRemoteConfig();
      return Right(remoteConfig);
    } catch (e) {
      if (e is CustomException) {
        return Left(HttpFailure(e.code, e.message));
      } else {
        return const Left(
          HttpFailure(
            500,
            'Error... failed connect to server \nPlease check your connection',
          ),
        );
      }
    }
  }
}
