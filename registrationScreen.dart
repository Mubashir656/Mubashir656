import 'package:flutter/material.dart';
import 'package:ride_sharing_app/AllScreens/loginScreen.dart';

class RegistrationScreen extends StatelessWidget
{
  static const String idScreen="register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 35.0,),
          Image(
            image: AssetImage("images/logo.png"),
            width: 390.0,
            height: 250.0,
            alignment: Alignment.center,
          ),

          SizedBox(height: 1.0,),
          Text(
              "Register as Rider",
              style: TextStyle(fontSize: 24.0,fontFamily:"Brand Bold"),
              textAlign: TextAlign.center
          ),
          Padding(
            padding:EdgeInsets.all(20.0),
            child: Column(
              children: [

                SizedBox(height: 1.0,),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                        fontSize: 14.0
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  style:TextStyle(fontSize: 14.0),
                ),

                SizedBox(height: 1.0,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                        fontSize: 14.0
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  style:TextStyle(fontSize: 14.0),
                ),

                SizedBox(height: 1.0,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone",
                    labelStyle: TextStyle(
                        fontSize: 14.0
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  style:TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 1.0,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        fontSize: 14.0
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  style:TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(
                  color: Colors.yellow,
                  textColor: Colors.white,
                  child: Container(
                    height: 50.0,
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 18.0,fontFamily: "Brand Bold"),
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(24.0)
                  ),
                  onPressed: ()
                  {
                    Navigator.pushNamedAndRemoveUntil(context, LoginScreen.idScreen, (route) => false);                  },
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: ()
            {
              print("Clicked");
            },
            child: Text(
              "Already  have an Account? Login Here.",
            ),

          ),


        ],
      ),
    );
  }
}

