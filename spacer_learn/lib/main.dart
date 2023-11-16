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
        title: const Center(child: Text("Spacer Learn"),),
            backgroundColor: Colors.green,

      ),
      body: Row(
        children: [
          Container(

            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Spacer(flex: 2,),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Spacer(flex:3),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ), 
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
