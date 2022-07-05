import 'dart:io';
import 'dart:math';

void main() {
  List<int> arr = [];
  int sum = 0;
  double mid = 0;
  for (var i = 0; i < 100; i++) {
    arr.add(Random().nextInt(100));
    sum += binarcolvo(arr[i]);
  }
  mid = sum / 10;
  print(mid);
  sum = 0;
  mid = 0;
  for (var i = 0; i < 100; i++) {
    sum += randomSearch1(arr[i]);
  }
  print('22');
  mid = sum / 100;
  print('randsearch$mid');
}

void binar() {
  int left = 0;
  int right = 100;
  int rand = Random().nextInt(10);
  int colvo = 1;
  print('num which need find $rand');
  while (true) {
    stdout.write(' number${(left + right) ~/ 2}\n');
    if (rand == (left + right) ~/ 2) {
      break;
    } else if (rand < (left + right) ~/ 2) {
      colvo++;
      right = (left + right) ~/ 2;
    } else if (rand > (left + right) ~/ 2) {
      colvo++;
      left = (left + right) ~/ 2;
    }
  }
  print('colvo =$colvo');
}

int binarcolvo(int rand) {
  int left = 0;
  int right = 100;
  int colvo = 1;
  while (true) {
    if (rand == (left + right) ~/ 2) {
      break;
    } else if (rand < (left + right) ~/ 2) {
      colvo++;
      right = (left + right) ~/ 2;
    } else if (rand > (left + right) ~/ 2) {
      colvo++;
      left = (left + right) ~/ 2;
    }
  }
  return colvo;
}

void randomSearch() {
  int left = 0;
  int right = 100;
  int rand = (left + right) ~/ 2;
  print(rand);
  while (true) {
    stdout.write('is it your number${rand}?\n');
    // if (rand == (left + right) ~/ 2) {
    //   break;
    // } else if (rand < (left + right) ~/ 2) {
    //   right = (left + right) ~/ 2;
    // } else if (rand > (left + right) ~/ 2) {
    //   left = (left + right) ~/ 2;
    // }
    String? answer = stdin.readLineSync();
    if (answer == 'yes') {
      break;
    } else if (answer == 'less') {
      right = (left + right) ~/ 2;
      rand = Random().nextInt(right - left) + left;
    } else if (answer == 'more') {
      left = (left + right) ~/ 2;
      rand = Random().nextInt(right - left) + left;
    } else {
      print('wrong entering');
    }
  }
  print(' programm find it');
}

int randomSearch1(int find) {
  int left = 0;
  int right = 100;
  int rand = (left + right) ~/ 2;
  int colvo = 1;
  int findtime = 1;
  while (true) {
    if (find == rand) {
      break;
    } else if (find < rand) {
      if (findtime < 6) {
        right = (left + right) ~/ 2;
        findtime++;
      }
      if (right < find) {
         left = 0;
        right = 100;
        rand = (left + right) ~/ 2;
        findtime = 0;
      }
      rand = Random().nextInt(right - left+1) + left ;

      colvo++;
    } else if (find > rand) {
      if (findtime < 6) {
        left = (left + right) ~/ 2;
        findtime++;
      }
      if (left > find) {
        left = 0;
        right = 100;
        rand = (left + right) ~/ 2;
        findtime = 0;
      }
      rand = Random().nextInt(right - left+1) + left ;
      colvo++;
    }
  }
  return colvo;
}
