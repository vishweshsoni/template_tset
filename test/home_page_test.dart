import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:template_tset/ui/home_page.dart';

void main() {
  testWidgets('HomePage displays "Hello there" text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomePage(
          isDarkMode: false,
          onThemeChanged: (value) {
            if (kDebugMode) {
              print('Theme changed to dark mode: $value');
            }
          },
        ),
      ),
    );

    final textFinder = find.text('Hello there');
    expect(textFinder, findsOneWidget);
  });
}
