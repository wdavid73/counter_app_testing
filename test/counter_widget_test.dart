import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyWidget has a counter', (widgetTester) async {
    await widgetTester.pumpWidget(const CounterWidget(counter: 1));
    final infoFinder = find.text('You have pushed the button this many times:');
    final counterFinder = find.text('1');

    expect(infoFinder, findsOneWidget);
    expect(counterFinder, findsOneWidget);
  });

  testWidgets('Counter widget increment count tap', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(
          title: "Flutter Test",
        ),
      ),
    );
    await tester.tap(find.byKey(const Key('increment_counter')));
    await tester.pump();
    final counter = find.text('1');
    expect(counter, findsOneWidget);
  });

  testWidgets('Counter widget decrement count tap', (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: MyHomePage(title: 'Flutter Test'),
    ));

    await widgetTester.tap(find.byKey(const Key('decrement_counter')));
    await widgetTester.pump();
    final counter = find.text('-1');
    expect(counter, findsOneWidget);
  });
}
