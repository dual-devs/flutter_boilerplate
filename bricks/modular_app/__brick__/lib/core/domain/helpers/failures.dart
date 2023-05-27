import 'package:equatable/equatable.dart';

import 'failure_strings.dart';

abstract class Failure extends Equatable {
  final String title;
  final String message;

  const Failure({
    required this.message,
    this.title = '',
  });

  @override
  List<Object> get props => [title, message];
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure({required String message})
      : super(
          title: "Sem conexão",
          message: message,
        );
}

class BadRequestFailure extends Failure {
  const BadRequestFailure({required String message})
      : super(
          title: "Falha na conexão",
          message: message,
        );
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    required String message,
  }) : super(
          title: "Sem autorização",
          message: message,
        );
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure({
    required String message,
  }) : super(
          title: "Comunicação perdida",
          message: message,
        );
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({
    required String message,
  }) : super(
          title: "Sem informações",
          message: message,
        );
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
  }) : super(
          title: "Problemas técnicos",
          message: message,
        );
}

class ValueFailure<T> extends Failure {
  const ValueFailure({required String message})
      : super(
          title: "Informações inválidas",
          message: message,
        );
}

class UnrecognizedError extends Failure {
  const UnrecognizedError()
      : super(
          message: Strings.unexpectedError,
        );
}
