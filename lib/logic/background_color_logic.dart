import 'dart:math';
import 'package:flutter/material.dart';

/// A utility class for generating random background colors.
class BackgroundColorLogic {
  /// Generates a random color.
  ///
  /// The returned color is fully opaque and has random values for the red, green,
  /// and blue channels.
  static Color generateRandomColor() {
    final Random _random = Random();

    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }
}
