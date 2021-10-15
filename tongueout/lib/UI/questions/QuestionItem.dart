import 'package:flutter/material.dart';
import 'package:tongueout/UI/components/expandedTileCustom.dart';

class QuestionItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Padding(padding: EdgeInsets.all(size.height/180)
   ,child:Container(
     decoration: BoxDecoration(
       border: Border.all(width: 0.5,color: Theme.of(context).primaryColor),
     ),
     child: Center(
       child: CustomExpansionTile(
         expandedArrowColor:Colors.white,
         expandedBackgroundColor:Colors.white,
         trailing: SizedBox(),
         title: Container(

           height: size.height / 10,
          width: size.width/1.1,
        
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
             children: <Widget>[
               Container(
                 
                 width: size.width/1.45,
                   child: Text(
                 "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:",
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: size.height / 60,fontWeight: FontWeight.w600
                 ),
               )),
                       Container(
                 
                 
                   child:Padding(
                     padding: EdgeInsets.zero,
                     child: Switch(value: true, onChanged: (bool istrue){

                     }),
                   )
               
               ),
            
             ],
           ),
         ),
         children: <Widget>[
           Padding(
             padding:  EdgeInsets.all(size.height/180),
             child:Container(
               width: size.width/1.2,
               child: Column(
                 children: [
                   Padding(
                    padding:  EdgeInsets.all(size.height/180),
                     child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:"),
                   ),

                   Padding(padding:  EdgeInsets.all(size.height/180), 
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Katagori",style: TextStyle(fontSize: size.height/55,fontWeight: FontWeight.w600),),
                       //#4CAF50

                       Padding(
                         padding:  EdgeInsets.all(size.height/180),
                         child: Container(
                           width: size.width/4,
                           height: size.height/18,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(size.height/90),
                             border: Border.all(width: 0.5,color: Color(0xff4caf50)),
                           ),
                           child: Center(child: Text("Music",style: TextStyle(fontSize: size.height/55,color:Color(0xff4CAF50) ),),),
                         ),
                       )
                     ],
                   ),
                   ),
                             Padding(padding:  EdgeInsets.all(size.height/180), 
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Question type",style: TextStyle(fontSize: size.height/55,fontWeight: FontWeight.w600),),
                       //#2196F3

                       Padding(
                         padding:  EdgeInsets.all(size.height/180),
                         child: Container(
                           width: size.width/4,
                           height: size.height/18,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(size.height/90),
                             border: Border.all(width: 0.5,color: Color(0xff2196F3)),
                           ),
                           child: Center(child: Text("Music",style: TextStyle(fontSize: size.height/55,color:Color(0xff2196F3) ),),),
                         ),
                       )
                     ],
                   ),
                   )

                 ],
               ))
           
  )
           
         ],
       ),
     ),
   ),
   );
  }



}