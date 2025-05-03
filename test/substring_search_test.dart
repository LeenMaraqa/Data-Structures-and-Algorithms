import 'package:test/test.dart';
import '../lib/algorithims/string/substring_search/substring_search.dart'; 

void main() {
  group('Manual Substring Search Tests', () {
    test('Contains substring: "banana" and "ana"', () {
      expect(containsSubstringManual('banana', 'ana'), isTrue);
    });

    test('First occurrence of "ana" in "banana"', () {
      expect(firstOccurrenceManual('banana', 'ana'), equals(1));
    });

    test('All occurrences of "ana" in "banana"', () {
      expect(allOccurrencesManual('banana', 'ana'), equals([1, 3]));
    });
  });

  group('Built-in Substring Search Tests', () {
    test('Contains substring: "banana" and "ana"', () {
      expect(containsSubstringBuiltIn('banana', 'ana'), isTrue);
    });

    test('First occurrence of "ana" in "banana"', () {
      expect(firstOccurrenceBuiltIn('banana', 'ana'), equals(1));
    });

    test('All occurrences of "ana" in "banana"', () {
      expect(allOccurrencesBuiltIn('banana', 'ana'), equals([1, 3]));
    });
  });
}
