import 'package:logger/logger.dart';

class Loggers {
  static final Logger _logger = Logger(
    filter: null,
    printer: PrettyPrinter(),
    output: null,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warn(String message) {
    _logger.w(message);
  }

  static void error(String message) {
    _logger.e(message);
  }

  static void errorWithStackTrace(
      String message, Object error, StackTrace stackTrace) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
