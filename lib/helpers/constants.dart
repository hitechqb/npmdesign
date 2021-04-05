import 'package:flutter/material.dart';

class Constants {
  static final backgroundColor = Color(0xFF2c3135);
  static final highlightColor = Colors.white.withOpacity(0.05);
  static final shadowColor = Colors.black87;

  static final softHighlightColor = Constants.highlightColor.withOpacity(0.03);
  static final softShadowColor = Constants.shadowColor.withOpacity(0.3);

  /// app gradient
  static final gradientStart = Color(0xFFF89B29);
  static final gradientMiddle = Color(0xFFFC4E56);
  static final gradientEnd = Color(0xFFFF0F7B);

  /// button Balance HomePage
  static final balanceGradientStart = Color(0xFFF89B29);
  static final balanceGradientMiddle = Color(0xFFFC4E56);
  static final balanceGradientEnd = Color(0xFFFF0F7B);
}
