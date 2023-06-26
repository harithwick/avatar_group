import 'package:flutter/material.dart';

class Utils {
  static String getInitials(String string) => string.isNotEmpty
      ? string.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';

  static Color getTextColorBasedOnBackground(Color backgroundColor) {
    int d = 0;
    double luminance = (0.299 * backgroundColor.red +
            0.587 * backgroundColor.green +
            0.114 * backgroundColor.blue) /
        255;

    if (luminance > 0.5) {
      d = 0; // bright colors - black font
    } else {
      d = 255; // dark colors - white font
    }

    return Color.fromARGB(backgroundColor.alpha, d, d, d);
  }
}
