Queue Implementation in Dart

This project shows a simple generic Queue in Dart using a List<T>. A queue works on a First In, First Out basis—elements leave in the same order they arrive.

Queue operations

Enqueue: add an element to the end of the queue 
Dequeue: remove an element from the front  
Front: return the first element without removing  
isEmpty: check if the queue has no elements  
Size: return the number of elements  
Clear: remove all elements in the queue

Example Usage

Queue<String> queue = Queue<String>();

  queue.enqueue('a');
  queue.enqueue('b');
  queue.enqueue('c');

  print('front: ${queue.front()}'); // output a
  print('size: ${queue.size()}'); // output 3

  print('dequeue: ${queue.dequeue()}'); // output a
  print('new Front: ${queue.front()}'); // output b