import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  const Failures([List properties = const <dynamic>[]]) : super();
}

/*
  ini untuk handle message error
  jika terjadi error pada API
  atau status code yang tidak 200
*/
class HttpFailure extends Failures {
  final int code;
  final String message;

  const HttpFailure(
    this.code,
    this.message,
  );

  @override
  List<Object?> get props => [code, message];
}
