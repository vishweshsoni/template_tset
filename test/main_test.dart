import 'package:flutter_test/flutter_test.dart';
import 'package:template_tset/ui/color_changer_app.dart';

void main() {
  testWidgets('ColorChangerApp should run', (WidgetTester tester) async {
    await tester.pumpWidget(const ColorChangerApp());

    expect(find.byType(ColorChangerApp), findsOneWidget);
  });
}
