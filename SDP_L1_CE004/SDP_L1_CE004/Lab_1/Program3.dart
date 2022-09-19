import "dart:io";

void main() {
  stdout.write('Without New Line');
  print('Hello World');
  print(calculate());
}

int calculate() {
  return 7 * 8;
}
