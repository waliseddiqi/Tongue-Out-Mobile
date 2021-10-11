import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tongueout/viewModels/followViewModels/follow_view_model.dart';

class FollowersPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
       
        body:  ViewModelBuilder<FollowViewModel>.reactive(
            viewModelBuilder: () => FollowViewModel(),
    
         builder: (context, model, child) =>
           Center(
            child:Column(
              children: [
                
                 Material(
                   color: Theme.of(context).primaryColor,
                   child: Container(
                     height: size.height/13,
                                 child: Padding(
                    padding:  EdgeInsets.all(size.height/180),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TabBarItems("Followers",0),
                           TabBarItems("Followed",1),
                            TabBarItems("Others",2)
                        ],
                    ),
                                 ),
                                 ),
                 ),
                 Expanded(
                   child: Container(
                    
                    
                    child:ListView.builder(
                      itemCount: 30,
                      itemExtent: size.height/10,
                      itemBuilder: (context,index)=>FollowersListItem()),
                   ),
                 )
              ],
            ) ,
          ),
        ),
      ),
    );
  }


}


class TabBarItems extends ViewModelWidget<FollowViewModel>{
  final String text;
  final int index;
  TabBarItems(this.text,this.index);
  @override
  Widget build(BuildContext context,FollowViewModel model) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: (){
        model.setCurrentIndex(index);
        
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(size.height/180),
            child: Text(text,style: TextStyle(fontSize: size.height/45,color: Colors.white,fontWeight: model.getCurrentIndex==index?FontWeight.w600:FontWeight.normal),),
            ),
            Padding(
              padding: EdgeInsets.all(size.height/180),
              child: Container(
                color:model.getCurrentIndex==index?Colors.white:Theme.of(context).primaryColor,
                width: size.width/4,
                height: size.height/500,
              
              ),
            )
          ],
        ),
      ),
    );
  }

}






class FollowersListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
    
      child: Padding(
        padding:  EdgeInsets.all(size.height/180),
        child: Row(
         
          children: [
            Icon(Icons.account_circle,color: Colors.black,size: size.height/20,),
            Container(
              
              width: size.width/6,
              
              child: Padding(padding: EdgeInsets.all(size.height/180),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name",style: TextStyle(fontSize: size.height/55,color: Colors.black),),
                Text("Email",style: TextStyle(fontSize: size.height/55,color: Colors.black),),

                ],
              ),
              )
            ),
            SizedBox(width: size.width/2.6,),
                     Padding(
                     
                     padding:EdgeInsets.all(size.height/90), 
              child: SizedBox(
                height: size.height/18,
                width: size.width/4,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,

                side: BorderSide(width: 1, color: Colors.red,)
                ),
                onPressed: (){
                 // Navigator.push(context, CupertinoPageRoute(builder: (context)=>HomePage()));
                }, child: Center(child: Text("FOLLOW",style: TextStyle(fontSize: size.height/60,color:Colors.white,fontWeight: FontWeight.w600),),)),
              ),
              ),

          ],
        ),
      ),
    );
  }




}