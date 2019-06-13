import 'dart:io';
import 'dart:async';
import 'dart:convert';
void main () {
  print('Nobbas Assignment 2');
  readFileSync();
}
void readFileSync() {
  //Please Specify Your File Path
  String contents = new File('/Users/madhur/Desktop/dartFinal/lib/data.txt').readAsStringSync();
  print(contents);
  json.decode(contents);
  print("After  Converting it to JSON");
  print(contents);
}



