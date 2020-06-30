import 'package:flutter/material.dart';
// ignore: camel_case_types
class ReusableWidget extends StatelessWidget {
  final Color colour;
  final Widget newWid;
  final Function onPress;
  ReusableWidget({@required this.colour, this.newWid, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: newWid,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
//Rounded Button
class RoundedButton extends StatelessWidget {
  final IconData roundedButtonIcon;
  final Function onPress;
  RoundedButton({this.roundedButtonIcon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(roundedButtonIcon),
      elevation: 30,
      constraints: BoxConstraints.tightFor(
        width: 55.0,
        height: 55.0,
      ),
      fillColor: Color(0xFF090C22),
      shape: CircleBorder(),
      onPressed: () {
        onPress();
      },
    );
  }
}