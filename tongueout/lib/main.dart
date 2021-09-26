import 'package:flutter/material.dart';
import 'package:tongueout/UI/mainPage.dart';

void main() {
  runApp(MyApp());
}
  MaterialColor getColor(Color color){
    return    new MaterialColor(0xffff5252, <int,Color>{
    50:color,
    100:color,
    200:color,
    300:color,
    400:color,
    500:color,
    600:color,
    700:color,
    800:color,
    900:color
  });
  }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: getColor(Color(0xffff5252)),
      ),
      home:MainPageLoginOrRegister()
    );
  }
}



