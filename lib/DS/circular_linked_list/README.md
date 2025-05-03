CircularLinkedList in Dart
    This project implements a CircularLinkedList<T> data structure in Dart.

How to run?
    Clone the repository
    Install dependencies
        dart pub get
    Run the example
        dart run lib/DS/circular_linked_list/circular_linked_list.dart
    Run unit tests
    dart test test/circular_linked_list_test.dart

How Circular References are Handled
    When the list is empty, inserting the first node sets head = tail = newNode, and newNode.next = head.
    Every new node is inserted after the tail, and the tail.next pointer is updated to point to head.
    When deleting the head or tail, the pointers are updated to maintain the circular structure.