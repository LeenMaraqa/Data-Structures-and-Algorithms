Anagram Checker in Dart

This project demonstrates two different approaches to check if two strings are anagrams of each other in Dart:
    Manual implementation using character frequency
    Built-in implementation using sorting

Problem Definition
    An anagram of a string is another string that contains the same characters, only the order of characters can be different.
    Example: racecar and carrace are anagrams.

Algorithm Analysis

checkAnagramManually(String s1, String s2)
Approach:
    Check if lengths are equal.
    Use two frequency lists of size 26.
    Count character occurrences in each string.
    Compare both frequency lists.
    Time Complexity: O(n)
    Space Complexity: O(1)

checkAnagramUsingBuiltIn(String s1, String s2)
Approach:
    Check if lengths are equal.
    Convert both strings to lists, sort them, and compare.
    Time Complexity: O(n log n)
    Space Complexity: O(n)

Example
    String s1 = 'racecar';
    String s2 = 'carrace';
    
    String s3 = 'max';
    String s4 = 'mix';
Output
    checkAnagramManually: true
    checkAnagramUsingBuiltIn: true

    checkAnagramManually: false
    checkAnagramUsingBuiltIn: false
