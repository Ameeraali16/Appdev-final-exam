import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:q2/HomePage.dart';

void main() {
  testWidgets('MyhomePage default appearance', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Homepage(),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Homepage),
      matchesGoldenFile('ui_sc.dart'),
    );
  });
}
