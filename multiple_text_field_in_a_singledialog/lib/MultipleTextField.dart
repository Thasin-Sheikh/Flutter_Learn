import 'package:flutter/material.dart';

class MultipleTextFieldShow extends StatelessWidget {
  const MultipleTextFieldShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 400,
        width: 300,
        //color: Colors.grey,
        child: Column(
          children: [
            const Text(
              "Welcome To Dialog Box",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           Container(
             height: 300,
             width: 300,
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: TextField(
                       keyboardType: TextInputType.multiline,
                       minLines: 3,
                       maxLines: 6,
                       decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 width: 3, color: Colors.blue),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 width: 3, color: Colors.black),
                           )
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: TextField(
                       keyboardType: TextInputType.multiline,
                       minLines: 3,
                       maxLines: 6,
                       decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 width: 3, color: Colors.yellow),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 width: 3, color: Colors.black),
                           )
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: TextField(
                       keyboardType: TextInputType.multiline,
                       minLines: 3,
                       maxLines: 6,
                       decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 width: 3, color: Colors.greenAccent),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide:
                                 BorderSide(width: 3, color: Colors.black),
                           )),
                     ),
                   ),
                 ],
               ),
             ),
           ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Press Me!"),
            )
          ],
        ),
      ),
    );
  }
}
