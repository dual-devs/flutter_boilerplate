import 'package:flutter_dotenv/flutter_dotenv.dart';

class Api {
  static final baseUrl = dotenv.env['API_URL_DEV'];

  // Endpoints example
  static const login = 'auth/login';
}
