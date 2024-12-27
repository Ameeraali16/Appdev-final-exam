import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:q1/MyhomePage.dart';

void main() {
  testWidgets('MyhomePage default appearance', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: MyhomePage(),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(MyhomePage),
      matchesGoldenFile('ui_sc.dart'),
    );
  });
}
