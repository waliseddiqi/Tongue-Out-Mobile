import 'package:flutter/material.dart';
import 'package:tongueout/UI/questions/QuestionItem.dart';



class MyQuestions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

  return SafeArea(child: Scaffold(body: Center(
    child: Padding(padding: EdgeInsets.all(size.height/180),
    child: ListView.builder(
      itemCount: 50,
      itemBuilder: (context,index){
      return QuestionItem();
    }),
    ),

  )));
  }

}



