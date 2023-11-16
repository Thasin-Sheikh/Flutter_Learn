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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Learn ScrollView'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    color: Colors.yellow,

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    color: Colors.green,

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    color: Colors.grey,

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    color: Colors.blue,

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    color: Colors.red,

                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 400,
              margin: const EdgeInsets.only(bottom: 8.0),
              color: Colors.red,

            ),
            Container(
              height: 200,
              width: 400,
              margin: const EdgeInsets.only(bottom: 8.0),
              color: Colors.black,

            ),
            Container(
              height: 200,
              width: 400,
              margin: const EdgeInsets.only(bottom: 8.0),
              color: Colors.yellow,

            ),Container(
              height: 200,
              width: 400,
              margin: const EdgeInsets.only(bottom: 8.0),
              color: Colors.purple,

            ),
          ],
        ),
      )
    );
  }
}
