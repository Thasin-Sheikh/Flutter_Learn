import 'package:flutter/material.dart';
import 'image_show.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: test_page(),
    );
  }
}
class test_page extends StatefulWidget {



  @override
  State<test_page> createState() => _test_pageState();
}

class _test_pageState extends State<test_page> {
  static String src1 ='https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png';
  static  String src2='https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png';
  static String src=src1;
  bool presstrack = true;

  var name = "Hi";

  void ChangePic() {
    setState(() {
      if (presstrack) {
        src=src2;
      } else {
        src=src1;
      }
      presstrack = !presstrack;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Learn Flutter")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(120.0),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {
                          // print("Hi");
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return ImageDialog(src);
                              });
                        },
                        child: Image.network(
                            src,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ChangePic();
                      },
                      child: const Text("Click me"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
