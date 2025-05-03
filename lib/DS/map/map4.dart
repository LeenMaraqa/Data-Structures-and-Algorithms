//Time Complexity O(n)
Map<int, String> invertMap(Map<String, int> map1) {
  Map<int, String> map2 = {};

  for (var entry in map1.entries) {
    map2[entry.value] = entry.key;
  }

  return map2;
}

void main() {
  Map<String, int> map1 = {'apple': 1, 'banana': 2, 'cherry': 3};  
  print(invertMap(map1));
}