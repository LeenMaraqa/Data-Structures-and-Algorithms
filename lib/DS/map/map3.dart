//Time Complexity O(size of map1 + size of map2)

Map<String, int> mergeMaps(Map<String, int> map1, Map<String, int> map2) {

  Map<String, int> newMap = {};

  for (var key in map1.keys) {
    newMap[key] = map1[key]!;
  }
  for (var key in map2.keys) {
    if (newMap.containsKey(key)) {
      newMap[key] = newMap[key]! + map2[key]!;
    } else {
      newMap[key] = map2[key]!;
    }
  }

  return newMap;
}

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'b': 3, 'c': 4};
  print(mergeMaps(map1, map2)); 
}