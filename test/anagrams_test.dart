import 'package:test/test.dart';
import '../lib/algorithims/string/anagrams/anagrams.dart';

void main() {
  group('Anagram Tests - Manual Implementation', () {
    test('Anagrams: racecar and carrace', () {
      expect(checkAnagramManually('racecar', 'carrace'), isTrue);
    });

    test('Not Anagrams: code and mode', () {
      expect(checkAnagramManually('code', 'mode'), isFalse);
    });

    test('Empty strings', () {
      expect(checkAnagramManually('', ''), isTrue);
    });

  });

  group('Anagram Tests - Built-in Implementation', () {
    test('Anagrams: racecar and carrace', () {
      expect(checkAnagramUsingBuiltIn('racecar', 'carrace'), isTrue);
    });

    test('Not Anagrams: code and mode', () {
      expect(checkAnagramUsingBuiltIn('code', 'mode'), isFalse);
    });

    test('Empty strings', () {
      expect(checkAnagramUsingBuiltIn('', ''), isTrue);
    });

  
  });
}
