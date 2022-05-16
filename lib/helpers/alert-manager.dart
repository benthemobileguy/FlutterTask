import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/color-manager.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertManager {
  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 4,
        backgroundColor: ColorManager.textColor,
        textColor: Colors.white);
  }
}
