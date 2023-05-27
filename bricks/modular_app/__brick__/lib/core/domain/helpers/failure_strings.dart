abstract class Strings {
  /// for when there is no connection
  static const noConnection = 'Ops, you are offline..';

  /// for server side code 400
  static const badRequest = 'Something went wrong. Please try again later or contact our support.';

  /// for server side code 401
  static const unauthorized = 'Failed to authenticate.';

  /// for server side code 500
  static const serverError =
      'We are having technical problems but we are already solving it. Try again in a few minutes';

  /// for when no matching issue has been found
  static const unexpectedError = 'Unexpected error.';
}
