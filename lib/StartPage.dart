import 'package:carbonmail/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              right: -32,
              left: -32,
              child: Image.asset(
                "assets/images/Sky.png",
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 1 / 6,
              left: 0,
              right: 0,
              child: Container(
                  child: Image.asset(
                "assets/images/Horizon.png",
                fit: BoxFit.cover,
              ))),
          Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2 + 50,
              child: Container(
                  child: Image.asset(
                "assets/images/Background.png",
                fit: BoxFit.cover,
              ))),
          Positioned(
            right: -50,
            top: MediaQuery.of(context).size.height * 2 / 5 - 25,
            child: Image.asset("assets/images/SVG.png"),
            width: MediaQuery.of(context).size.width * 4 / 5,
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 1 / 6,
              child: Container(
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height * 4 / 6,
                width: MediaQuery.of(context).size.width * 4 / 5,
                child: Column(
                  children: [
                    Flexible(
                      child: Text(
                        "Cleaning your index has never been easier.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                            color: Color(0xff293855)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Clean up old subscriptions and",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color(0xff293855)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "say no to email carbon!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff293855)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1 / 2,
                  height: 56,
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff293855).withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 12,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff293855)),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff293855),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
