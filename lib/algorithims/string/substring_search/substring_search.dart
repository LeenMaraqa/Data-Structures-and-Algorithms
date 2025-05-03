bool containsSubstringManual(String mainText, String subString) {
  return firstOccurrenceManual(mainText, subString) != -1;
}

int firstOccurrenceManual(String mainText, String subString) {
  for (int i = 0; i <= mainText.length - subString.length; i++) {
    bool found = true;
    for (int j = 0; j < subString.length; j++) {
      if (mainText[i + j] != subString[j]) {
        found = false;
        break;
      }
    }
    if (found) return i;
  }
  return -1;
}

List<int> allOccurrencesManual(String mainText, String subString) {
  List<int> result = [];
  for (int i = 0; i <= mainText.length - subString.length; i++) {
    bool found = true;
    for (int j = 0; j < subString.length; j++) {
      if (mainText[i + j] != subString[j]) {
        found = false;
        break;
      }
    }
    if (found) result.add(i);
  }
  return result;
}

bool containsSubstringBuiltIn(String mainText, String subString) {
  return mainText.contains(subString);
}

int firstOccurrenceBuiltIn(String mainText, String subString) {
  return mainText.indexOf(subString);
}

List<int> allOccurrencesBuiltIn(String mainText, String subString) {
  List<int> result = [];
  int index = mainText.indexOf(subString);
  while (index != -1) {
    result.add(index);
    index = mainText.indexOf(subString, index + 1);
  }
  return result;
}


void main() {
  String mainText = 'banana';
  String subString = 'ana';

  print('Phase 1 - Manual');
  print('Contains substring: ${containsSubstringManual(mainText, subString)}');
  print('First occurrence index: ${firstOccurrenceManual(mainText, subString)}');
  print('All occurrences: ${allOccurrencesManual(mainText, subString)}');

  print('Phase 2 – BuiltIn ');
  print('Contains substring: ${containsSubstringBuiltIn(mainText, subString)}');
  print('First occurrence index: ${firstOccurrenceBuiltIn(mainText, subString)}');
  print('All occurrences: ${allOccurrencesBuiltIn(mainText, subString)}');
}