//Time Complexity O(n)
Map<String, int> getStudents(Map<String, int> students, int threshold) {
   Map<String, int> filteredStudents = {};

  for (var entry in students.entries) {
    if (entry.value >= threshold) {
      filteredStudents[entry.key] = entry.value; 
    }
  }

  return filteredStudents;
}

void main() {
  Map<String, int> students = {'Alice': 80, 'Bob': 45, 'Charlie': 70};
  int threshold = 50;
  print(getStudents(students, threshold));
}