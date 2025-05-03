Substring Search in Dart

This Dart project compares two approaches for substring search:
Manual implementation (character-by-character comparison)
Built-in Dart string methods (contains and indexOf)

Algorithm Analysis

Manual vs Built-In String Search Methods
The code is comparing two different approaches to finding substrings within a string:

Manual Implementation
    containsSubstringManual: Checks if a substring exists in the string using a manual method.
    firstOccurrenceManual: Finds the first occurrence of a substring using a brute-force approach.
    allOccurrencesManual: Finds all occurrences of a substring within the string.        Time Complexity: O(n * m)

Built-in Implementation
    containsSubstringBuiltIn: Uses Dart's built-in contains method.
    firstOccurrenceBuiltIn: Uses Dart's built-in indexOf method to find the first occurrence.
    allOccurrencesBuiltIn: Uses Dart's built-in indexOf method to find all occurrences.
    Time Complexity: O(n + m)

Example
    String mainText = 'banana';
    String subString = 'ana';
Output
    Phase 1 - Manual
    Contains substring: true
    First occurrence index: 1
    All occurrences: [1, 3]
    Phase 2 – BuiltIn 
    Contains substring: true
    First occurrence index: 1
    All occurrences: [1, 3]


