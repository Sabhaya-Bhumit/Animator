import 'dart:math';

import 'package:bhumit/splase_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splase_screen',
      routes: {
        '/': (context) => home(),
        'splase_screen': (context) => splase_screen(),
      },
    ),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double height = 20;
  double weight = 20;
  double age = 10;
  double bmi = 1;

  double value = 0;

  Color mycolor = Color(0xff1d1e33);
  Color mymalecolor = Color(0xff1d1e33);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff090e21),
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          children: [
            //female and male//
            Row(
              children: [
                Expanded(
                    child: TweenAnimationBuilder(
                  tween:
                      Tween<Offset>(begin: Offset(210, 0), end: Offset(0, 0)),
                  duration: Duration(milliseconds: 3000),
                  builder: (context, Offset posizon, child) {
                    return Transform.translate(
                      offset: posizon,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            mycolor = Colors.white30;
                            mymalecolor = Color(0xff1d1e33);
                          });
                        },
                        child: Ink(
                          color: mycolor,
                          child: Container(
                            height: 190,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                TweenAnimationBuilder(
                                  curve: Curves.bounceOut,
                                  tween: Tween<double>(begin: 0, end: 2 * pi),
                                  duration: Duration(milliseconds: 3000),
                                  builder: (context, value, child) {
                                    return Transform.rotate(
                                      angle: value,
                                      child: Icon(Icons.female_sharp,
                                          size: 130, color: Colors.white),
                                    );
                                  },
                                ),
                                Text(
                                  "Famale",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: TweenAnimationBuilder(
                  tween:
                      Tween<Offset>(begin: Offset(0, 210), end: Offset(0, 0)),
                  duration: Duration(milliseconds: 3000),
                  builder: (context, Offset posizon, child) {
                    return Transform.translate(
                        offset: posizon,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              mycolor = Color(0xff1d1e33);
                              mymalecolor = Colors.white54;
                            });
                          },
                          child: Ink(
                            color: mymalecolor,
                            child: Container(
                              height: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 0, end: 2 * pi),
                                    curve: Curves.bounceOut,
                                    duration: Duration(milliseconds: 3000),
                                    builder: (context, value, child) {
                                      return Transform.rotate(
                                        angle: value,
                                        child: Icon(Icons.male,
                                            size: 130, color: Colors.red),
                                      );
                                    },
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
                  },
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //height//
            TweenAnimationBuilder(
              // curve: Curves.bounceOut,
              tween: Tween<Offset>(begin: Offset(-210, 0), end: Offset(0, 0)),
              duration: Duration(milliseconds: 3000),
              builder: (context, Offset posizon, child) {
                return Transform.translate(
                  offset: posizon,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          height: 190,
                          color: Color(0xff1d1e33),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "HEIGHT",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "${height.toInt()}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        )),
                                    TextSpan(
                                        text: "   cm",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                        )),
                                  ],
                                ),
                              ),
                              Slider(
                                min: 0,
                                max: 700,
                                activeColor: Colors.pink,
                                inactiveColor: Color(0xff555555),
                                value: height,
                                divisions: 700,
                                onChanged: (val) {
                                  setState(() {
                                    height = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            //weight and age//
            Row(
              children: [
                Expanded(
                  child: TweenAnimationBuilder(
                    tween:
                        Tween<Offset>(begin: Offset(0, 100), end: Offset(0, 0)),
                    curve: Curves.bounceOut,
                    duration: Duration(milliseconds: 3000),
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: value,
                        child: Container(
                          height: 190,
                          color: Color(0xff1d1e33),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Weight",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${weight.toInt()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Color(0xff4c4f4e),
                                    onTap: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Ink(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          color: Color(0xff4c4f5e),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            color: Color(0xfffffff),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    // splashColor: Colors.lightBlue,
                                    onLongPress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },

                                    onTap: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Ink(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          color: Color(0xff6e6f7a),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            color: Color(0xfff67fa4),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TweenAnimationBuilder(
                    tween:
                        Tween<Offset>(begin: Offset(0, 100), end: Offset(0, 0)),
                    curve: Curves.bounceOut,
                    duration: Duration(milliseconds: 3000),
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: value,
                        child: Container(
                          height: 190,
                          color: Color(0xff1d1e33),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Age",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${age.toInt()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              //age//
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Color(0xff4c4f4e),
                                    onTap: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Ink(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          color: Color(0xff4c4f5e),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            color: Color(0xfffffff),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    // splashColor: Colors.lightBlue,
                                    onTap: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Ink(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          color: Color(0xff6e6f7a),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            color: Color(0xfff67fa4),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TweenAnimationBuilder(
                tween:
                    Tween<Offset>(begin: Offset(200, 100), end: Offset(0, 0)),
                duration: Duration(milliseconds: 3000),
                builder: (context, value, child) => Transform.translate(
                      offset: value,
                      child: Text(
                        "RESULT = ${bmi.toInt()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )),
            SizedBox(height: 35),
            //calculate//
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 5),
              duration: Duration(milliseconds: 3000),
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      setState(() {
                        value = height / 100;
                        bmi = weight / (value * value);
                      });
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color(0xffeb1555),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        height: 11,
                        width: 65,
                        alignment: Alignment.center,
                        child: Text(
                          "Calculator",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
