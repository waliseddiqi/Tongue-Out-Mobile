import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tongueout/UI/FollowPages/followersPage.dart';
import 'package:tongueout/UI/questions/myQuestions.dart';

class DrawerBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Material(
       color: Theme.of(context).primaryColor,
       child: SizedBox(
         width: size.width/2,
         child: Container(
          // color: Theme.of(context).primaryColor,
           child: Column(
             children: [
               UserAccountsDrawerHeader(
                 currentAccountPicture: Container(child: Icon(Icons.account_circle,size: size.height/10,color: Colors.white,),),
                 accountName:Text("Wali Seddiqi"), accountEmail: Text("waliseddiqi4@gmail.com")),
     
                DrawerItems("home.svg","HOME",(){

                }),
                DrawerItems("settings.svg","SETTINGS",(){

                }),
                DrawerItems("questions.svg","MY QUESTIONS",(){
                   Navigator.push(context, CupertinoPageRoute(builder: (context)=>MyQuestions()));

                }),
                DrawerItems("questions.svg","MY EXAMS",(){

                }),
                DrawerItems("questions.svg","MY FOLLOWERS",(){
                   Navigator.push(context, CupertinoPageRoute(builder: (context)=>FollowersPage()));
                })
             ],
           ),
     
         ),
       ),
     );
  }

}

class DrawerItems extends StatelessWidget{
  final String image;
  final String text;
  final Function onTap;
  DrawerItems(this.image,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return InkWell(
     highlightColor: Colors.red,
     
     onTap: (){
      onTap();
     },
     child: Padding(
       padding:  EdgeInsets.all(size.height/180),
       child: Container(
        
         height: size.height/15,
         child: Center(child: Row(
           children: [
             Padding(
               padding:  EdgeInsets.all(size.height/90),
               child: SvgPicture.asset("assets/Icons/"+image),
             ),
             Padding(
               padding:  EdgeInsets.all(size.height/90),
               child: Text(text,style: TextStyle(fontSize: size.height/55,color: Colors.white),),
             )
           ],
         ),),
       ),
     ),
   );
  }




}