import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tongueout/UI/register/registerMain.dart';

class MainPageLoginOrRegister extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text("tongue out"),
            Container(
              height: size.height/25,
              width: size.width/3.8,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(size.height/180),
              ),
              child: Center(child: Text("Select Language",style: TextStyle(fontSize: size.height/75,color: Colors.white),)),
            )
          ],
        ),
      ),
      body:Center(
        child: Column(
          
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height/35),
              child: Padding(padding:EdgeInsets.all(size.height/180),
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.all(size.height/180),
                    child: Center(child: Text("tongue-out",style: TextStyle(fontSize: size.height/25,color: Theme.of(context).primaryColor),)),
                  ),
                  // Padding(
                  //   padding:EdgeInsets.all(size.height/180),
                  //   child: Center(child: Container(height: size.height/1500,color: Colors.black,),),
                  // )
                  Divider(color: Colors.black54,),
                      Padding(
                    padding:EdgeInsets.all(size.height/180),
                    child: Center(child: Text("Write and solve your own test",style: TextStyle(fontSize: size.height/55,color: Colors.black54,)),
                  )),

               
                ],
              ),
              ),
            ),
            ///BACKGROUND
            Container(
             
              margin: EdgeInsets.only(top: size.height/90),
              child: Background()),
              

              SizedBox(height: size.height/90,),
              ///START BUTTON
              
              Padding(padding:EdgeInsets.all(size.height/90), 
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>RegisterMain()));
              }, child: Center(child: Text("START",style: TextStyle(fontSize: size.height/65,color:Colors.white)),)),
              ),
              ///ALREADY HAVE AN ACOOUNT
                Padding(padding:EdgeInsets.all(size.height/90), 
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.white,

              side: BorderSide(width: 1, color: Colors.red,)
              ),
              onPressed: (){

              }, child: Center(child: Text("ALREADY HAVE AN ACCOUNT",style: TextStyle(fontSize: size.height/65,color:Theme.of(context).primaryColor),),)),
              ),
              SizedBox(height: size.height/15,),
              Padding(
                padding:EdgeInsets.all(size.height/90),
                child: Center(child: InkWell(
                   borderRadius: BorderRadius.circular(size.height/15),
                 
                  onTap: (){},
                  child: Padding(
                  padding:EdgeInsets.all(size.height/180),
                
                    child: Container(
                      height: size.aspectRatio*100,
                      width: size.aspectRatio*100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(size.height/15)
                      ),
                      child: Icon(Icons.keyboard_arrow_down,color: Colors.white,size: size.height/20,),
                    ),
                  ),
                ),),
                )



          ],
        ),
      ) ,
    ),
  );
  }










}



class Background extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return
    SvgPicture.asset("assets/images/main_background_image.svg",height: size.height/3,fit: BoxFit.fitHeight,alignment: Alignment.centerLeft,);
  }
  
}


