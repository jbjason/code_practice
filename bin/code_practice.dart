import 'dart:io';
import 'dart:math';
import 'package:code_practice/code_practice.dart' as code_practice;

// base class T extends LinkedListEntry<T> {
//   final int value;
//   T(this.value);
// }

void main(List<String> arguments) {
  final int t = int.parse(stdin.readLineSync()!);
  final arr = <int>[];
  for (int i = 0; i < t; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  _bubbleSort(arr);
  // final linkedList = LinkedList<T>();
  // linkedList.add(T(45));
}

void _bubbleSort(List<int> arr) {
  int totalSwaps = 0;
  for (int i = 0; i < arr.length; i++) {
    int numberOfSwaps = 0;

    for (int j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        final temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        numberOfSwaps++;
        totalSwaps++;
      }
    }
    if (numberOfSwaps == 0) break;
  }

  print("Array is sorted in $totalSwaps swaps");
  print("First Element: ${arr.first}");
  print("Last Element: ${arr.last}");
}

mixin AdvancedArithmetic{
  void divisorSum(int n);
}

class Calculator implements AdvancedArithmetic {
  @override
  void divisorSum(int n) {
    
  }
}
// class LinkedList<T> {
//   Node<T>? head; // Reference to the first node in the list
//   LinkedList();
//   bool get isEmpty => head == null; // Check if the list is empty
//   // Add a new node to the end of the list
//   void add(T value) {
//     final newNode = Node<T>(value);
//     if (isEmpty) {
//       // If the list is empty, set the new node as the head
//       head = newNode;
//     } else {
//       var current = head;
//       while (current!.next != null) {
//         // Traverse the list to find the last node
//         current = current.next;
//       }
//       current.next = newNode; // Set the new node as the next node of the last node
//     }
//   }
//   // Remove the first node with the given value
//   void remove(T value) {
//     if (isEmpty) return;
//     if (head!.value == value) {
//       // If the value is in the head node, update the head to the next node
//       head = head.next;
//       return;
//     }
//     var current = head;
//     while (current!.next != null) {
//       if (current.next!.value == value) {
//         // If the value is found in the next node, skip the next node
//         current.next = current.next.next;
//         return;
//       }
//       current = current.next;
//     }
//   }
//   // Print the values of all nodes in the list
//   void printList() {
//     var current = head;
//     while (current != null) {
//       print(current.value);
//       current = current.next;
//     }
//   }
// }
