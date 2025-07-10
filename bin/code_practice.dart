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
  
}


