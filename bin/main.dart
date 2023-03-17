import 'dart:io';
import 'dart:math';

void main() {
  print("");
  print("====================================================================");
  print("");
  print("Question One");
  print("--------------------------------------------------------------------");
  print("");
  var Q1 = q1_attaurrehman();
  print("");

  print("");
  print("====================================================================");
  print("");
  print("Question Two");
  print("--------------------------------------------------------------------");
  print("");
  var Q2 = q2_attaurrehman();
  print("");

  print("");
  print("====================================================================");
  print("");
  print("Question Three");
  print("--------------------------------------------------------------------");
  print("");
  var Q3 = q3_attaurrehman();
  print("");

  print("");
  print("====================================================================");
  print("");
  print("Question Four");
  print("--------------------------------------------------------------------");
  print("");
  var Q4 = q4_attaurrehman();
  print("");

  print("");
  print("====================================================================");
  print("");
  print("Question Five");
  print("--------------------------------------------------------------------");
  print("");
  var Q5 = q5_attaurrehman();
  print("");

  print("");
  print("====================================================================");
  print("");
  print("Question Six");
  print("--------------------------------------------------------------------");
  print("");
  var Q6 = q6_attaurrehman();
  print("");
  print("");
  print("====================================================================");
}

//Q1
q1_attaurrehman() {
  stdout.write('Enter Words or number : ');
  // User enter a string or a number
  String? original = stdin.readLineSync();

  // then we will reverse the input
  String? reverse = original!.split('').reversed.join('');
  // then we will compare
  if (original == reverse) {
    print("It's a Palindrome");
  } else {
    print("It's Not a Palindrome");
  }
  return original;
}

//Q2
q2_attaurrehman() {
  String reverse(String str) {
    String reversedStr = '';
    for (int i = str.length - 1; i >= 0; i--) {
      reversedStr += str[i];
    }
    return reversedStr;
  }

  String str = 'hello';
  String reversedStr = reverse(str);
  print('Original string: $str');
  print('Reversed string: $reversedStr');
}

//Q3
q3_attaurrehman() {
  {
    String capitalize(String str) => str[0].toUpperCase() + str.substring(1);

    String result = capitalize("dev sheet is a real");
    print(result);
  }
  return;
}

//Q4
q4_attaurrehman() {
  List<num> findSecondLowestAndGreatest(List<num> arr) {
    // Sort the array in ascending order
    arr.sort();

    // Find the second lowest number
    num secondLowest = arr[0];

    // Find the second greatest number
    num secondGreatest = arr[arr.length - 1];

    // Return a list containing the second lowest and second greatest numbers
    return [secondLowest, secondGreatest];
  }

  List<num> array = [1, 2, 3, 4, 5, 8, 16, 35, 45, 66, 76, 112];
  List<num> result1 = findSecondLowestAndGreatest(array);
  print(result1);
}

//Q5
q5_attaurrehman() {
  int countOccurrences(String str, String letter) {
    int count = 1;
    for (int i = 0; i < str.length; i++) {
      if (str[i] == letter) {
        count++;
      }
    }
    return count;
  }

  String string = "w3resource.com";
  String letter = "o";
  int result2 = countOccurrences(string, letter);
  print(result2);
}

//Q6
q6_attaurrehman() {
    String getLongestCountry(List<String> countries) {
      String longCountry = "";
      for (String country in countries) {
        if (country.length > longCountry.length) {
          longCountry = country;
        }
      }
      return longCountry;
    }

    List<String> countries = [
      "Pakistan",
      "America",
      "Germany"
    ];
    String result3 = getLongestCountry(countries);
    print(result3);
  }
