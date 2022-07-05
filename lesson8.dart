import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  // randSum();
  // print(array());
  // check();
  
}

void randSum() {
  int rand1 = Random().nextInt(5);
  int rand2 = Random().nextInt(5);
  int sum = rand1 + rand2;
  print('sum=$sum');
}

List array() {
  List arr = [];
  int n = Random().nextInt(10);
  print('size=$n');
  for (var i = 0; i < n; i++) {
    arr.add(Random().nextInt(10));
  }
  return arr;
}

void index(int x) {
  List arr = [];
  List ind = [];
  int n = 10;
  print('size=$n');
  for (var i = 0; i < n; i++) {
    arr.add(Random().nextInt(10));
    if (x == arr[i]) {
      ind.add(i);
    }
  }
  print(arr);
  print(ind);
}

void check() {
  List arr = [];
  int n = 10;
  print('size=$n');
  for (var i = 0; i < n; i++) {
    arr.add(Random().nextInt(50) + 51);
  }
  print(arr);
  for (var i = 0; i < n - 1; i++) {
    if (arr[i] == arr[i + 1]) {
      print('index $i equal to index${i + 1}');
    }
  }
}


