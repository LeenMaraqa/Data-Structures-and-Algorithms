//Time Complexity O(n)
String getKey(Map<String, int> map) {

  String keyWithMaxValue = map.keys.first;
  int maxValue = map[keyWithMaxValue]!;

  for (var key in map.keys.skip(1)) {
    if (map[key]! > maxValue) {
      maxValue = map[key]!;
      keyWithMaxValue  = key;
    }
  }

  return keyWithMaxValue;
}

void main() {
  Map<String, int> data = {'x': 10, 'y': 50, 'z': 20};
  print(getKey(data)); 
}
