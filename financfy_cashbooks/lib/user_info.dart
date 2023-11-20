import 'package:flutter/cupertino.dart';

class UserInfo extends StatelessWidget {
  final String _type;
  final String _value;

  const UserInfo({super.key, required String type, required String value}):_type=type,_value=value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(_type,
        style:const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          fontFamily: 'Metropolis_Regular',
          fontStyle: FontStyle.normal,
          color: Color(0xFF8A8A8A),

        ),),
        Flexible(
          child: Text(_value, maxLines: 2,
            textAlign: TextAlign.end,
            style:  const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Metropolis_Regular',
              fontStyle: FontStyle.normal,
              color: Color(0xFF333333),
            ),),
        )
      ],

    );
  }
}
