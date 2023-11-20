import 'package:financfy_cashbooks/name_with_photo.dart';
import 'package:flutter/material.dart';


class IdentifierWithCreationDate extends StatelessWidget {
  const IdentifierWithCreationDate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: NameWithPhoto()),

        Column(
          children: [
            Icon(Icons.more_vert)

          ],

        )
      ],

    );
  }
}
