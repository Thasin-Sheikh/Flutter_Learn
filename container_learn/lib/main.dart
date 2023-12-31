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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Learn Flutter With Container",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black,
          child: TextButton(
            child: const Text(
              "Learn from scratch",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              print("Buton Pressed!!");
            },
            onLongPress: ()
            {
              print("longPressed!!");
            },
          ),
        ),
      ),
    );
  }
}
