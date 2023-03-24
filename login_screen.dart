import 'package:flutter/material.dart';
import 'package:flash_chat/round_button.dart';
import 'package:flash_chat/welcome_screen.dart';
class LoginScreen extends StatefulWidget {
  static const String id='login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                height: 200,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value){
                //email=value;

              },
              decoration: InputDecoration(
                hintText: 'Enter the email to login',
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0),),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0),),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent,  width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0),),
                ),

              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value){

              },
              decoration: InputDecoration(
                hintText: 'Enter the password to login',
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32),),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32),),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent,  width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32),),
                ),

              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(color: Colors.lightBlueAccent, title: 'Log In',onPressed: (){
              //Navigator.pushNamed(context, LoginScreen.id);
            },),


          ],
        ),
      ),
    );
  }
}




// Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
// child: Material(
// borderRadius: BorderRadius.circular(18),
// elevation: 5,
// color: Colors.lightBlue,
// child: MaterialButton(onPressed: (){
// //login
// },
// minWidth: 200.0,
// height: 28.0,
// child: Text("LOGIN"),
// ),
// ),
// ),