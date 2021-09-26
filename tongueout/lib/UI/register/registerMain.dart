import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tongueout/UI/register/registerCheck.dart';
import 'package:tongueout/UI/register/registerPrivateInfo.dart';
import 'package:tongueout/UI/register/registerProfilePhoto.dart';
import 'package:tongueout/viewModels/registerViewModels/register_main_view_model.dart';

class RegisterMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   
    return ViewModelBuilder<RegisterMainViewModel>.reactive(
          viewModelBuilder: () => RegisterMainViewModel(),

       builder: (context, model, child) =>
       SafeArea(
        child: Scaffold(
          
            appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text("Register"),
           
            ],
          ),
        ),
          body: Center(
            child: Container(
              height:size.height,
              child: ListView(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(size.height/90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PagesStepNumber(index: 0,),
                         PagesStepNumber(index: 1,),
                          PagesStepNumber(index: 2,)
                      ],
                    ),
                  ),
                  Padding(
                   padding:  EdgeInsets.all(size.height/90),
                    child: Center(child: Text(getCurrenttitle(model.getCurrentIndex),style: TextStyle(fontSize: size.height/35,color: Theme.of(context).primaryColor),)),
                  ),
                  Container(
                    height: size.height/1.1,
                   
                    child: Padding(padding:  EdgeInsets.all(size.height/360),
                    child: getCurrentRegisterPage(model.getCurrentIndex)
                    ),
                  ),
                  Padding(padding:  EdgeInsets.all(size.height/90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
               
                Padding(padding:EdgeInsets.all(size.height/90), 
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.white,

              side: BorderSide(width: 1, color: Colors.red,)
              ),
              onPressed: (){
                Navigator.pop(context);

              }, child: Center(child: Text("CANCEL",style: TextStyle(fontSize: size.height/65,color:Theme.of(context).primaryColor),),)),
              ),
                       Padding(padding:EdgeInsets.all(size.height/90), 
              child: ElevatedButton(onPressed: (){
                model.setCurrentIndex(model.getCurrentIndex+1);
              
              }, child: Center(child: Text("CONTINUE",style: TextStyle(fontSize: size.height/65,color:Colors.white)),)),
              
              ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),),
      ),
    );
  }


String getCurrenttitle(int index){
  switch (index) {
  case 0:
  return "Private Info";
  case 1:
  return "Profile Picture";
  case 2:
  return "Control Info";

  default:
  return "Private Info";
}
}

Widget getCurrentRegisterPage(int index){
switch (index) {
  case 0:
  return RegisterPrivateInfo();
  case 1:
  return RegisterProfilePhoto();
  case 2:
  return RegisterCheck();

  default:
  return RegisterPrivateInfo();
}
}



}



class PagesStepNumber extends ViewModelWidget<RegisterMainViewModel>{
 
   final int index;
    PagesStepNumber({required this.index});
  @override
  Widget build(BuildContext context,RegisterMainViewModel model) {
    Size size = MediaQuery.of(context).size;

    return Center(child:Container(
                      height: size.aspectRatio*80,
                      width: size.aspectRatio*80,
                      decoration: BoxDecoration(
                        color:model.getCurrentIndex==index? Theme.of(context).primaryColor:Colors.grey,
                        borderRadius: BorderRadius.circular(size.height/15)
                      ),
                      child: Center(child: Text("${index+1}",style: TextStyle(fontSize: size.height/55,color: Colors.white),),)
                    ),);
  }

}