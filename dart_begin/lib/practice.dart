import 'dart:io';


void main() {
  print("Welcome to dart");
  var MyC = myClass();
  MyC.printFunc("Sheikh");
  var listName=[10,20,30,40];
  var name=[];
  listName.add(50);
  name.add(listName);
  print("$name");
  name.insert(2, 100);
  print("$name");
}

class myClass{

void printFunc(String name) {
  print(name);

}

}