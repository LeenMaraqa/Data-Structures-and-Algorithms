Doubly Linked List in Dart

A generic DoublyLinkedList<T> implementation in Dart that supports bidirectional traversal and common list operations such as insertions, deletions, and value retrieval.

Features
    Insert elements at the head, tail, or any index
    Delete elements by value
    Access elements by index
    Check if a value exists
    Print elements from head to tail and tail to head
    Get the length of the list

How to run?
    Clone the repository
    Install dependencies
        dart pub get
    Run the example
        dart run lib/DS/doubly_linked_list/doubly_linked_list.dart
    Run unit tests
        dart test test/doubly_linked_list_test.dart
    
Example
    print('Inserting at head:');
    list.insertAtHead(2);
    list.insertAtHead(1);
    list.printForward();

    print('Inserting at tail:');
    list.insertAtTail(3);
    list.insertAtTail(4);
    list.printForward();

    print('List backward:');
    list.printBackward();

    print('List forward:');
    list.printForward();

    print('Contains 1: ${list.contains(1)}'); 
    print('Contains 10: ${list.contains(10)}'); 

    print('Deleting 1');
    list.delete(1);
    list.printForward();

    print('Inserting at index 0:');
    list.insertAt(0, 1);
    list.printForward();

    print('Element at index 2: ${list.getAt(2)}'); 
    print('Length: ${list.length()}'); 

Output

    Inserting at head:
    1
    2
    Inserting at tail:
    1
    2
    3
    4
    List backward:
    4
    3
    2
    1
    List forward:
    1
    2
    3
    4
    Contains 1: true
    Contains 10: false
    Deleting 1
    2
    3
    4
    Inserting at index 0:
    1
    2
    3
    4
    Element at index 2: 3
    Length: 4