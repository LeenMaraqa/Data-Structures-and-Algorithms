//Time Complexity O(n)
Map<String, List<String>> createGroupedMap(List<String> words) {
  Map<String, List<String>> groupedMap = {};

    for (int i = 0; i < words.length; i++) {
      String firstChar = words[i][0];
      if (groupedMap.containsKey(firstChar)) {
        groupedMap[firstChar]!.add(words[i]);
      } else {
        groupedMap[firstChar] = [words[i]];
      }
    }
  return groupedMap;
}

void main() {
  List<String> words = ['apple', 'apricot', 'banana', 'blueberry', 'cherry'];
  print(createGroupedMap(words));
}
