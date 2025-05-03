//Time Complexity O(nlog(n))
List<String> sortKeys(Map<String, int> map) {
  List<String> keysList = map.keys.toList();

  List<String> merge(List<String> left, List<String> right) {
    List<String> sortedList = [];
    int i = 0, j = 0;
    while (i < left.length && j < right.length) {
      if (map[left[i]]! < map[right[j]]!) {
        sortedList.add(left[i]);
        i++;
      } else {
        sortedList.add(right[j]);
        j++;
      }
    }
    sortedList.addAll(left.sublist(i));
    sortedList.addAll(right.sublist(j));
    return sortedList;
  }

  List<String> mergeSort(List<String> keys) {
    if (keys.length <= 1) {
      return keys;
    }
    int middle = keys.length ~/ 2;
    List<String> leftHalf = mergeSort(keys.sublist(0, middle));
    List<String> rightHalf = mergeSort(keys.sublist(middle));
    return merge(leftHalf, rightHalf);
  }
  
  return mergeSort(keysList);
}

void main() {
  Map<String, int> data = {'a': 3, 'b': 1, 'c': 2};
  print(sortKeys(data));
}