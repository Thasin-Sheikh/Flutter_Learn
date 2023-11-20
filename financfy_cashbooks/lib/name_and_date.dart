import 'package:flutter/material.dart';

class NameAndDate extends StatelessWidget {
  const NameAndDate({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Cashbook name",
          style: TextStyle(
            fontFamily: 'Metropolis_Regular',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF0C1F23),
            fontStyle: FontStyle.normal,

          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "Created at 01 Mar 2023",
          style: TextStyle(
            fontFamily: 'Metropolis_Regular',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8A8A8A),
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
