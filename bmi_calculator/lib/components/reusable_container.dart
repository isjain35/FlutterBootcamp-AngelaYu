import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color clr;
  final Widget containerChild;
  final Function onPress;

  ReusableContainer({@required this.clr, this.containerChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadiusDirectional.circular(10.0),
        ),
      ),
    );
  }
}
