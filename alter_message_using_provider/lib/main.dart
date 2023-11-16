import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child:
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const MyHomePage(title: "Lets Try!",),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {

  bool presstrack = true;
  var name = "Hi";

  void ChangeValue() {

      if (presstrack) {
        name = "Hello";
      } else {
        name = "Hi";
      }
      presstrack = !presstrack;
      notifyListeners();
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
    var appState = context.watch<MyAppState>();
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
                child:Text(appState.name),
              ),
              ElevatedButton(
                onPressed: () {
                  appState.ChangeValue();
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
