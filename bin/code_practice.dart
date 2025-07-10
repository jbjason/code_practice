import 'dart:io';
import 'dart:math';
import 'package:code_practice/code_practice.dart' as code_practice;

void main(List<String> arguments) {
  final int t = int.parse(stdin.readLineSync()!);
  final arr = <int>[];
  for (int i = 0; i < t; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  _bubbleSort(arr);

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
