import 'package:financfy_cashbooks/name_and_date.dart';
import 'package:flutter/material.dart';

class NameWithPhoto extends StatelessWidget {
  const NameWithPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: const Image(
                image: AssetImage('assets/images/finacfy_cashbook_pic.jpg'),
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        const SizedBox(width: 12),
        const Expanded(child: NameAndDate()),
      ],
    );
  }
}
