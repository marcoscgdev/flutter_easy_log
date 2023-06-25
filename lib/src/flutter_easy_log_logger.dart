import 'package:flutter/foundation.dart';

// ignore_for_file: avoid_print
class Log {
  static bool debugOnly = true;
  static bool showDate = false;

  static void d(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print('\x1B[36m${_getTag(tag)}${message.toString()}\x1B[0m');
  }

  static void e(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print('\x1B[31m${_getTag(tag)}${message.toString()}\x1B[0m');
  }

  static void i(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print('\x1B[32m${_getTag(tag)}${message.toString()}\x1B[0m');
  }

  static void v(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print(_getTag(tag) + message.toString());
  }

  static void w(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print('\x1B[33m${_getTag(tag)}${message.toString()}\x1B[0m');
  }

  static void wtf(Object message, {Object? tag}) {
    if (!debugOnly && kDebugMode) return;

    print('\x1B[35m${_getTag(tag)}${message.toString()}\x1B[0m');
  }

  static String _getTag(Object? tag) {
    String date = showDate ? '${DateTime.now().toString()} - ' : '';
    return tag != null ? '$date$tag: ' : date;
  }
}
