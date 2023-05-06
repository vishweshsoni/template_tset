
import 'package:flutter_test/flutter_test.dart';
import 'package:template_tset/ui/color_changer_app.dart';
import 'package:template_tset/ui/home_page.dart';

void main() {
  testWidgets('ColorChangerApp renders without errors',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ColorChangerApp());

    expect(find.byType(HomePage), findsOneWidget);
  });
}
