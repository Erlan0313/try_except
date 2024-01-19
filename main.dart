import 'dart:io';
void main(List<String> args) {
  // summ();
  // time();
  age();
}

// Напишите программу, которая запрашивает у пользователя два числа и выводит
// результат их деления. Однако, обработайте ситуацию деления на 0
summ() {
  try {
    stdout.write('Введите 1-oe число: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Введите 2-oe число: ');
    int b = int.parse(stdin.readLineSync()!);
    if (b == 0) {
      throw IntegerDivisionByZeroException();
    }
    double c = a / b;
    print('Сумма равно: $c');
  } on IntegerDivisionByZeroException {
    print('На ноль делить нельзя');
  } on FormatException {
    print('Ошибка! Введите число корректно!');
  } catch (e) {
    print('error is $e');
  }
}

// Напишите программу, которая запрашивает у пользователя количество минут и выводит
// это время в формате "часы:минуты".
time() {
  try {
    stdout.write('Введите количество минут: ');
    int usermin = int.parse(stdin.readLineSync()!);
    if (usermin < 0) {
      throw FormatException('Ошибка! Введите число правильно.');
    }
    int h = usermin ~/ 60;
    int m = usermin % 60;
    if (h >= 24) {
      print('Ошибка! Минута не должна превышать 1439');
    } else {
      print('Время: $h:$m');
    }
  } catch (e) {
    print('error is $e');
  }
}

// Напишите программу, которая просит пользователя ввести свой возраст.
// Обработайте ситуацию, если пользователь ввел некорректное значение
//  (например, строку вместо числа).
age() {
  try {
    stdout.write('Введите возраст: ');
    int userAge = int.parse(stdin.readLineSync()!);
    print('Ваш возраст: $userAge');
  } on FormatException {
    print('Ошибка введите число корректно');
  } catch (e) {
    print('error is $e');
  }
}
