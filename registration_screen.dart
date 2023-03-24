import 'package:flutter/material.dart';
import 'package:flash_chat/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegistrationScreen extends StatefulWidget {
  static const String id='registration_screen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),

              ),
            ),
            SizedBox(
              height: 24,
            ),
            // dusre part m textfield ajayega jisse ki user input dal sake email

            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value){
                // user email dalega
                email=value;
              },
              decoration: const InputDecoration(
                //usme show ho enter password .iske liye hinttext use kiya
                  hintText:'Enter your email',
                  // padding ke liye content padding use krna padega
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32)),

                  ),
                  //
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.blueAccent,width: 3.0 ),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                  //focusedBorder, displayed when InputDecorator.isFocused is
                  // true and InputDecoration.errorText is null.
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent,width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  )
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                password=value;
              },
              // box ko decorate krna hai
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
                  borderRadius:BorderRadius.all(Radius.circular(32)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
    RoundedButton(color: Colors.lightBlueAccent, title: 'Registered',
        onPressed: () async{
             final newUser= await _auth.createUserWithEmailAndPassword(email: email, password: password);

          },),
         ],
        ),
      ),
    );
  }
}

