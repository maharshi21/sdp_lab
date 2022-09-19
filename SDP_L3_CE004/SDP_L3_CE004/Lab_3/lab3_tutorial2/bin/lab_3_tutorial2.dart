import 'package:lab_3_tutorial2/lab_3_tutorial2.dart' as lab_3_tutorial2;
void use_optional([String name = "abc"])
{
  print("${name} is very honest!! ");
}
void named({required int x, int y = 4})
{
  print("${x} and ${y}");
}
no_need_type(number)
{
  return '$number is a very nice number.';
}

/* dart sees it
String no_need_type(dynamic number)
{
  return '$number is a very nice number.';
}
*/

String youAreWonderful([String name = "bob")
{
   return ("you are wonderful ${name}!!");
}

String numberPeople([int count = 10])
{
   return ("you are wonderful bob!!${count} think that.");
}

String mix(String name,[int count = 30])
{
   return ("you are wonderful bob!!${count} think that.");
}
void main(List<String> arguments)
{  
  //repeating that code in multiple spots presents two problems
  //duplicating effort
  //you need to change the logic in that bit of code, have to track down all of those instances of the code and change them in the same way
  //DRY = Don't Repeat Yourself

  //Part of function
  //Function Signature : return type, function name and parameters
  //Function Body : code between braces

  //main = the function that every Dart program starts with and return type :void

  // top-level-functions : which are functions that aren’t inside a class or another function.
  // method : a function is inside a class

  //Function PARAMETER (abstract): the name and type which is defined as input to your function
  //Function ARGUEMENTS (concrete): the actual value which we pass

  //POSITIONAL PARAMETERS: supply the arguments in the same order as defined the parameters 
  
  //OPTIONAL PARAMETERS : parameter with square brackets and add a question mark after the type if we don't pass that it will be null
  // Default parameter + optional parameter

  use_optional("xyz");
  use_optional();

  //NAMED PARAMETERS : surround it with curly braces.....make the parameters inside optional

  named(x:6, y:7);

  //function signature was getting a long ,adding a ',' after the last parameter lets the IDE format it vertically
  
  //Avoiding side effects : 
  /*void hello()
  {
    print('Hello!');  ===> print on console ---so console is side effect 
  } */

  //Pure functions : do exactly what you expect because they always return the same output for any given input
  
  //Optional types  --- dart automatically infere return tyoe and parameter type
  no_need_type(10);

  //mini-exercise 1
  youAreWonderful();

  //exercise2
  numberPeople();

  //exercise3
  mix("heuliy");

  //Anonymous functions
  //first class citizen --- we can assign function as value to other variables
  Function multiply = (int a, int b)
  {
    return a * b;
  };

  //Returning functions from functions --- higher order function
  Function namedFunction()
  {
    return
    () {
      print('hello');
      };
  }

  //Arrow functions  --- arrow notation or arrow syntax
  int add(int a, int b) => a + b;

  //Anonymous function with foreach loop
  const array=[1, 2, 3, 4];
  array.foreach((num){print(num);});  
}