import 'package:calculatorbw/bmi_functionality.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/constants.dart';
import '../Components/buttom_button.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
  final BmiFunctionality obj=BmiFunctionality(height: sliderValue,weight: weight);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text('BMI CALCULATOR'),
          )),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
                height: 5,
                child: Container(
                  color: Colors.black,
                )),
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(right:190,top: 30,bottom: 20),
                  child: Text('Your Result',style:kResTop),
                ),
            ),
            Expanded(
              flex: 5,
              child:Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF1D1F33),
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(obj.resultDescription(),textAlign: TextAlign.center,style:TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
              Text(obj.result(),textAlign: TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold,),),
              Column(
                children: <Widget>[
                  Text('NORMAL BMI range:',textAlign: TextAlign.center,style: kNormalTextStyle,),
                  Text('18,5 - 25 kg/m2',textAlign: TextAlign.center,style: kNormalTextStyle,),
                ],
              ),

              Text(obj.resAdvise,textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text('Developed By  SHIVA GUNTOJI',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            ],

          ),
            ),
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(top:20),
                  color: kBottomTabColor,
                  child:BottomButton2(
                    labelText: 'Try again',

                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
