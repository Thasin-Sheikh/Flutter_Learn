import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter App',
      home: CounterState(),
    );
  }
}

class CounterState extends StatefulWidget {
  @override
  Counter createState() => Counter();
}

class Counter extends State<CounterState> {
  @override
  int count = 0;

  void increament() {
    setState(() {
      count++;
    });
  }

  void decreament() {
    if (count < 1) {
      return;
    }
    setState(() {
      count--;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                increament();
              },
            ),
            Text("${count}"),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                decreament();
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyNewStatefulWidget extends StatefulWidget {
  const MyNewStatefulWidget({super.key});

  @override
  State<MyNewStatefulWidget> createState() => _MyNewStatefulWidgetState();
}

class _MyNewStatefulWidgetState extends State<MyNewStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
