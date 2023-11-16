import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
      ),
      body: Container(
        child: Hero(
            tag: 'learn',
            child: Image.asset(
                'assets/images/colorful.jpg'
            )

        ),
      ),
    );
  }
}
