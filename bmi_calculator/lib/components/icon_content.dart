import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icn;
  final String textHead;

  IconContent({@required this.icn, @required this.textHead});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icn,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textHead,
          style: kTextHeadStyle,
        ),
      ],
    );
  }
}
