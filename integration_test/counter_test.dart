import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'tap on the floating action button increment, verify counter',
    (widgetTester) async {
      // load app widget
      await widgetTester.pumpWidget(const MyApp());

      // verify the counter start at 0.
      expect(find.text('0'), findsOneWidget);

      // finds the floating action button to tap on.
      final tabIncrement = find.byKey(const Key('increment_counter'));

      // emulate a tap on the floating action button.
      await widgetTester.tap(tabIncrement);

      // trigger a frame.
      await widgetTester.pumpAndSettle();

      //verify the counter increment by 1.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    },
  );
}
