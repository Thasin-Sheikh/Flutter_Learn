import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final String link;

  const ImageDialog(this.link, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 400,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Welcome Here!!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Image.network(
                    link,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Search your favorite pic',
                    labelStyle: TextStyle(
                      fontSize: 25,

                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
