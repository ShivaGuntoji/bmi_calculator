import 'package:flutter/material.dart';


class InnIcon extends StatelessWidget {
  final IconData nameIcon;
  final String innText;
  final Color innColor;
  InnIcon({@required this.nameIcon, @required this.innText,@required this.innColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          nameIcon,
          size: 100,
          color: innColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(innText, style: TextStyle(
            color: innColor, fontWeight: FontWeight.bold, fontSize: 18),),
      ],
    );
  }
}
