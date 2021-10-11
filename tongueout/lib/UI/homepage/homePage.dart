import 'package:flutter/material.dart';
import 'package:tongueout/UI/components/drawerBar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerBar(),
      body: Center(
        child: Container(

        ),
      ),
    );

  }

}