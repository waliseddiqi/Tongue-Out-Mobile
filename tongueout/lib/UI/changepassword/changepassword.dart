import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tongueout/viewModels/change_password_view_model.dart';
import 'package:tongueout/viewModels/login_view_model.dart';
import 'package:tongueout/viewModels/registerViewModels/register_main_view_model.dart';

class ChangePasswordMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ViewModelBuilder<ChangePasswordViewModel>.reactive(
          viewModelBuilder: () => ChangePasswordViewModel(),

       builder: (context, model, child) =>
       SafeArea(child: Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text("Login"),
             
              ],
            ),
          ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: size.height/13,),
              Padding(
              padding:EdgeInsets.all(size.height/90), 

                child: Container(
                  width: size.width/1.2,
                  height: size.height/7,
                  decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                    
                    borderRadius: BorderRadius.circular(size.height/180)),
                  child: Center(child: SvgPicture.asset("assets/images/big_logo.svg")),
                ),
              ),
                SizedBox(height: size.height/30,),
            Padding(
              padding: EdgeInsets.all(size.height/90),
              child: TextFieldPassword(fieldName: "Password",),
            ),
            Padding(
              padding: EdgeInsets.all(size.height/90),
              child: TextFieldPassword(fieldName: "Password Confirm",),
            ),
                SizedBox(height: size.height/25,),

                   Padding(
                     
                     padding:EdgeInsets.all(size.height/90), 
              child: SizedBox(
                height: size.height/15,
                width: size.width/1.5,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,

                side: BorderSide(width: 1, color: Colors.red,)
                ),
                onPressed: (){
                  //Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginMainPage()));
                }, child: Center(child: Text("SEND",style: TextStyle(fontSize: size.height/60,color:Colors.white,fontWeight: FontWeight.w600),),)),
              ),
              ),

              Padding(padding: EdgeInsets.all(size.height/90),
              child: Center(child: Text("Forgot Password",style: TextStyle(fontSize: size.height/60,color: Theme.of(context).primaryColor),),),
              )
    
            ],
          ),
        ),
      )),
    );

  }

}





class TextFieldPassword extends ViewModelWidget<ChangePasswordViewModel>{
  final String fieldName;

  TextFieldPassword({required this.fieldName});
  @override
  Widget build(BuildContext context,ChangePasswordViewModel model) {
    return new TextField(
            obscureText: !model.showPassword1,
            
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                hintText: fieldName,
                suffixIcon: IconButton(
                  onPressed: (){
                    model.showPassword1 = !model.showPassword1;
                    model.notifyListeners();
                  },
                  icon:Icon(model.showPassword1?Icons.visibility:Icons.visibility_off)),
              
                labelText: fieldName,
               
                prefixText: ' ',
        ),
    );  
  }

}