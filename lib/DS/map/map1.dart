//Time Complexity O(n)
Map<int, int> countOccurrences(List<int> data) {
  Map<int, int> occurrencesCounter = {};
  
  for (int i = 0; i < data.length; i++) {
    int number = data[i];
    if (occurrencesCounter.containsKey(number)) {
      occurrencesCounter[number] = occurrencesCounter[number]! + 1;
    } else {
      occurrencesCounter[number] = 1;
    }
  }

  return occurrencesCounter;
}

void main() {
  List<int> list = [1, 2, 2, 3, 3, 3];
  print(countOccurrences(list));
}
