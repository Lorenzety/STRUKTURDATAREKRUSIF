import 'dart:io';
int faktorial(int x) {
 if (x == 1) {
 return x;
 } else {
 return x * faktorial(x - 1);
 }
}
void main() {
 stdout.write("N = 50");
 }