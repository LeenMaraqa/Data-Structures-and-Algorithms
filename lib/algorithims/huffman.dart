class Node {
  String? char;
  Node? left;
  Node? right;

  Node({this.char, this.left, this.right});
}

Map<String, String> buildHuffmanMap(List<String> chars, List<int> freq) {
  int totalFrequency = freq.reduce((a, b) => a + b);
  Map<String, double> probabilityMap = {};
  for (int i = 0; i < chars.length; i++) {
    double probability = freq[i] / totalFrequency;
    probabilityMap[chars[i]] = probability;
  }

  Map<String, String> huffmanMap = {};
  for (int i = 0; i < chars.length; i++) {
  huffmanMap[chars[i]] = '';
  }

  while (probabilityMap.length > 1) {

    List<String> sortedKeys = probabilityMap.keys.toList();
    sortedKeys.sort((char1, char2) => probabilityMap[char1]!.compareTo(probabilityMap[char2]!));

    String first = sortedKeys[0];
    String second = sortedKeys[1];
    double combinedProb = probabilityMap[first]! + probabilityMap[second]!;

    for (var key in first.split('')) {
      huffmanMap[key] = '0' + huffmanMap[key]!;
    }
    for (var key in second.split('')) {
      huffmanMap[key] = '1' + huffmanMap[key]!;
    }

    String combinedChar = first + second;
    probabilityMap[combinedChar] = combinedProb;
    probabilityMap.remove(first);
    probabilityMap.remove(second);
  }
  return huffmanMap;
}

Node buildHuffmanTree(Map<String, String> huffmanMap) {
  Node root = Node();
  huffmanMap.forEach((char, binary) {
    Node currentNode = root;
    for (int i = 0; i < binary.length; i++) {
      if (binary[i] == '0') {
        currentNode.left ??= Node();  
        currentNode = currentNode.left!;
      } else {
        currentNode.right ??= Node();  
        currentNode = currentNode.right!;
      }
    }
    currentNode.char = char;
  });
  return root;
}

String decodeHuffman(Node root, String binaryCode) {  
  String binaryString = '';
  Node currentNode = root;

  for (int i = 0; i < binaryCode.length; i++) {
    if (binaryCode[i] == '0') {
      currentNode = currentNode.left!;
    } else {
      currentNode = currentNode.right!;
    }

    if (currentNode.char != null) {
      binaryString += currentNode.char!;
      currentNode = root;
    }
  }

  return binaryString;
}

void main() {

  List<String> chars = ['a', 'b', 'c', 'd', 'e'];
  List<int> freq = [5, 7, 11, 17, 3];
  Map<String, String> huffmanMap = buildHuffmanMap(chars, freq);
  print("Huffman Map:");
  print(huffmanMap);

  Node root = buildHuffmanTree(huffmanMap);
  String binaryCode = "001101111";
  String result = decodeHuffman(root, binaryCode);
  print('Input: $binaryCode');
  print('Output: $result');
}