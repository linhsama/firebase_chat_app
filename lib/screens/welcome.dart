import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: "Logo",
                child: SizedBox(
                  height: 100.0,
                  child: Image.asset("lib/images/logo.png"),
                )
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: "Arima",
                  fontSize: 40.0,
                  color: Colors.black,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [TypewriterAnimatedText("Flash Chat")],
                  onTap:(){
                    print("Tap Event");
                  },
                )
              )
            ),
            // RoundedButton(
            //   title: "Login",
            //   color: Colors.lightBlueAccent,
            //   onPress: (){
            //     Navigator.pushNamed(context, Login.id);
            //   },
            // ),
            // RoundedButton(
            //   title: "Register",
            //   color: Colors.lightBlue,
            //   onPress: (){
            //     Navigator.pushNamed(context, Register.id);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
