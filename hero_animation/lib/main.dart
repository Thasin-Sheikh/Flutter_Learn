import 'package:flutter/material.dart';
import 'Detailpage.dart';

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
      home: const MyHomePage(title: "View",),
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

        title: const Text("Hero Animation!"),
      ),
      body: Center(
        child: InkWell(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
          },
          child: Hero(

            tag: 'learn',
            child: Image.asset(
             'assets/images/colorful.jpg',
              height: 100,
              width: 100,
            )

          ),
        ),

      ),
    );
  }
}
