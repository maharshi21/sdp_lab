import 'package:project/project.dart' as project;
import "dart:math";
void main(List<String> arguments)
{
   ///Loops
  
  //  1. While loop
  // var sum = 1;
  // while(sum < 10)
  // {
  //   sum += 4;
  //   print(sum);
  // }

  //2.Do While loop
  // var sum = 1;
  // do
  // {
  //   sum += 4;
  //   print(sum);
  // }
  //while(sum < 10);

  ///while and do while always not give the same answer because of the initial condition

  /// Breaking out of a loop
  // var sum = 1;
  // while(true)
  // {
  //   sum += 4;
  //   if(sum > 10)
  //     break;
  // }
  // print(sum);

  // A random interlude
  // final number=Random();
  // while(number.nextInt(6) + 1 != 6)
  // {
  //   print("It's not a six");
  // }
  //NextInt function give number between 0 to n - 1

  ///3. for loop
//   for(int i = 0; i < 6; i++)
//     print(i);

  //continue keyword
  // for(int i = 0; i < 5; i++)
  // {
  //   if(i == 3)
  //       continue;
  //   print(i);
  // }

  //4. For-in loop
  // const str = "Hello World";
  // for(var s in str.runes)
  //   print(String.fromCharCode(s));
  // runes is a collection of all the code points in the string
  // fromCharCode is used to convert the code point integer into a string

  //5. For-each loop
  // const numbers = [1, 2, 3, 4, 5, 6];
  // numbers.forEach((number) => print(number));

  ///Mini-exercises
  // 1.
  // var counter = 0;
  // while(counter < 10)
  // {
  //   print("counter is $counter");
  //   counter++;
  // }

  //2.
  // for(int i = 1; i <= 10; i++)
  // {
  //   print("The square if $i is ${i * i}");
  // }

  //3.
  // const numbers = [1, 2, 4, 7];
  // for(var number in numbers)
  // {
  //   print("The square root of $number is ${sqrt(number)}");
  // }

  //4.
  // const numbers = [1, 2, 4, 7];
  // numbers.forEach((element) => print("The square root of $element is ${sqrt(element)}"));
}