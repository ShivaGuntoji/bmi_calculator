import 'package:flutter/material.dart';
import 'constants.dart';
import '../View/result_page.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.labelText, this.onPressed});
  final Function onPressed;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Colors.black,
      elevation: 0,
      fillColor: kBottomTabColor,
      onPressed: (){
        print('30');
        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()),);
      },
      child: Container(
        //color: kBottomTabColor,
          height: kBottomHeight.toDouble(),
          width: double.infinity,
          child: Center(
              child: Text(labelText.toString(),
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)))),
    );
  }
}


class BottomButton2 extends StatelessWidget {
  BottomButton2({@required this.labelText, this.onPressed});
  final Function onPressed;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Colors.black,
      elevation: 0,
      fillColor: kBottomTabColor,
      onPressed: (){
        print('pop');
        Navigator.pop(context);
      },
      child: Container(
        //color: kBottomTabColor,
          height: kBottomHeight.toDouble(),
          width: double.infinity,
          child: Center(
              child: Text(labelText.toString(),
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)))),
    );
  }
}