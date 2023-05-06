import 'dart:math';
import 'package:flutter/material.dart';

/// A utility class for generating random background colors.
class BackgroundColorLogic {
  static const int _kMaxColorValue = 256;
  static const int _kMaxAlphaValue = 255;

  /// Generates a random color.
  ///
  /// The returned color is fully opaque and has random values for the red,
  /// green,and blue channels.
  static Color generateRandomColor() {
    final Random _random = Random();

    return Color.fromARGB(
      _kMaxAlphaValue,
      _random.nextInt(_kMaxColorValue),
      _random.nextInt(_kMaxColorValue),
      _random.nextInt(_kMaxColorValue),
    );
  }
}
