import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template_tset/logic/background_color_logic.dart';

void main() {
  test('generateRandomColor() returns a Color object', () {
    expect(BackgroundColorLogic.generateRandomColor(), isA<Color>());
  });

  test('generateRandomColor() returns a fully opaque color', () {
    final color = BackgroundColorLogic.generateRandomColor();
    expect(color.alpha, equals(255));
  });

  test('generateRandomColor() returns a color with random values', () {
    final color1 = BackgroundColorLogic.generateRandomColor();
    final color2 = BackgroundColorLogic.generateRandomColor();
    expect(color1, isNot(equals(color2)));
  });
}
