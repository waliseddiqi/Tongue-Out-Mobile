import 'package:flutter/material.dart';

class RegisterPrivateInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Center(
   child: Column(
     children: [
       Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "User name",isPassword: false,),
       ),
       SizedBox(height: size.height/45,),
          Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Name",isPassword: false,),
       ),
          Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Surname",isPassword: false,),
       ),

        SizedBox(height: size.height/45,),
             Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Email",isPassword: false,),
       ),
          Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Phone",isPassword: false,),
       ),

        
        SizedBox(height: size.height/45,),
              Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Password",isPassword: true,),
       ),
          Padding(
        padding:EdgeInsets.all(size.height/90), 
        child: TextFieldDefault(fieldName: "Confirm Password",isPassword: true,),
       )
     ],
   ),
   );
  }




}



class TextFieldDefault extends StatelessWidget{
  final String fieldName;
  final bool isPassword;
  TextFieldDefault({required this.fieldName,required this.isPassword});
  @override
  Widget build(BuildContext context) {
    return new TextField(
            obscureText: isPassword,
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                hintText: fieldName,
              
                labelText: fieldName,
               
                prefixText: ' ',
        ),
    );  
  }

}