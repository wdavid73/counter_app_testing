import 'package:counter_app/widgets/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // UNO SOLO TEST
  /* test('Counter value should be incremented', () {
    final counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  }); */
  // GRUPO DE TEST
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be increment', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('value should be decrement', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
