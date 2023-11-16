import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool presstrack = true;
  var name = "Hi";

  void changevalue() {
    setState(() {
      if (presstrack) {
        name = "Hello";
      } else {
        name = "Hi";
      }
      presstrack = !presstrack;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Text Alter Learn",
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(name),
              ),
              ElevatedButton(
                onPressed: () {
                  changevalue();
                },
                child: const Text("Click Me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
