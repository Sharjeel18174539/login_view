import 'package:flutter/material.dart';
import 'package:flash_chat/login_screen.dart';
import 'package:flash_chat/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/round_button.dart';


class WelcomeScreen extends StatefulWidget {
  //const WelcomeScreen({super.key});

  static const String id='welcome_screen';

  //const WelcomeScreen({super.key});
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  //  Mixin are a way of reusing a class's code in multiple class hierarchies.
  late AnimationController controller;
  late Animation animation;
  late Animation animation1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(
      duration: Duration(seconds: 2),
      vsync:this,
      upperBound: 100,

    );
    animation=BorderRadiusTween(begin: BorderRadius.circular(10), end: BorderRadius.circular(30)).animate(controller);
    animation1=ColorTween(begin: Colors.blue, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
        //print(animation.value);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation1.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value,
                  ),
                ),
                TypewriterAnimatedTextKit(  // it have list of string we can give multiple string
                  text: ['FLASH CHAT'],
                  textStyle: TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(color: Colors.lightBlueAccent, title: 'Log In',onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundedButton(color: Colors.lightBlueAccent, title: 'Registration', onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            })
          ],
        ),
      ),
    );
  }
}


