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
      theme: ThemeData(

      ),
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

        title: Center(child: const Text("Learn Textfield")),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: TextField(

            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.deepPurple,
                )
              )
            ),

    ),
        ),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
