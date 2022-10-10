import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:ark_module_setup/src/domain/entities/remote_config_entity.dart';
import 'package:dartz/dartz.dart';

class ArkMainRepositoryImpl implements ArkMainRepository {
  final ArkMainRemoteDataSource dataSource;

  ArkMainRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, RemoteConfigEntity>> getRemoteConfig() async {
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
