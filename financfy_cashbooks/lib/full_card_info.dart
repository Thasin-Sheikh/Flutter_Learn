import 'package:flutter/material.dart';
import 'package:financfy_cashbooks/identifier_with_creation_date.dart';
import 'package:financfy_cashbooks/user_info.dart';
import 'package:financfy_cashbooks/user_role.dart';

class FullCardInfo extends StatelessWidget {
  const FullCardInfo ({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            IdentifierWithCreationDate(),
            SizedBox(
              height: 8,
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFF4F4FA),
            ),
            //need to change
            SizedBox(height: 7.5),
            UserRole(),
            SizedBox(height: 7.5),
            UserInfo(
                type: "Mobile:",
                value:
                "+0123456789"),
            SizedBox(height: 7.5),
            UserInfo(
                type: "Address:",
                value:
                "Kamal ataturk avenue,Banani, Dhaka-1216,Dhaka."),
          ],
        ),
      ),
    );
  }
}
