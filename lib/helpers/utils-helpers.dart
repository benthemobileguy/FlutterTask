import 'dart:ui';

import 'package:flutter/services.dart';

class UtilsHelpers{
  static Future setStatusBar(Color color) async {
    return SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }
}