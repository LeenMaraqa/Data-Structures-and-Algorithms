bool checkAnagramManually(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  List<int> s1CharFreq = List.filled(26, 0);
  List<int> s2CharFreq = List.filled(26, 0);

  for (int i = 0; i < s1.length; i++) {
    s1CharFreq[s1.codeUnitAt(i) - 97]++;
    s2CharFreq[s2.codeUnitAt(i) - 97]++;
  }

  for (int i = 0; i < 26; i++) {
    if (s1CharFreq[i] != s2CharFreq[i]) {
      return false;
    }
  }

  return true;
}

bool checkAnagramUsingBuiltIn(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  List<String> sortedS1Chars = s1.split('')..sort();
  List<String> sortedS2Chars = s2.split('')..sort();

  return sortedS1Chars.join() == sortedS2Chars.join();
}

void main() {
  String s1 = 'racecar';
  String s2 = 'carrace';

  bool resultManual = checkAnagramManually(s1, s2);
  bool resultBuiltIn = checkAnagramUsingBuiltIn(s1, s2);

  print('checkAnagramManually: $resultManual');
  print('checkAnagramUsingBuiltIn: $resultBuiltIn');
}
