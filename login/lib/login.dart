import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  Login({Key?key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
   Widget build(BuildContext context){
    return Scaffold(
      body : Container(
        
        child : Center(
          child : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                Image.asset("images/login.png", height: 200, width: 200,),
                Form(
                  key : formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Please enter the email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text("Email"),
                          //hint
                        ),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Please enter the password";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text("password")
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        if(formKey.currentState!.validate()){
                          print("Login Success");
                        }else{
                          print("Login Failed");
                        }
                      }, child: Text("Login"),),
                    ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}