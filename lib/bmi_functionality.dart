import 'dart:math';
class BmiFunctionality
{
  String resDesc;
  double res;
  String resAdvise;
  BmiFunctionality({int weight,int height})
  {
    res=(weight/(pow((height/100), 2)));

  }
  String resultDescription()
  {
    if(res<=18.5)
      {
        resAdvise='You have under weight.try to eat more!';
        resDesc='under weight'.toUpperCase();
      }
    else if(res>25)
      {
        resDesc='over weight'.toUpperCase();
        resAdvise='You have over weight.try to work out!';
      }
    else
      {
        resDesc='normal'.toUpperCase();
        resAdvise='You have normal weight.Good job!';
      }
    return resDesc;
  }
  String result()
  {
    return res.toStringAsFixed(1);
  }
  String advise()
  {
   return resAdvise;
  }
}