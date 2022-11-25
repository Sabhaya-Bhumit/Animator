import 'package:flutter/material.dart';

class splase_screen extends StatefulWidget {
  const splase_screen({Key? key}) : super(key: key);

  @override
  State<splase_screen> createState() => _splase_screenState();
}

class _splase_screenState extends State<splase_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cal();
  }

  cal() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xff090e21),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "BMI Calculator",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 50),
                CircularProgressIndicator(
                  color: Colors.pink,
                ),
              ],
            )));
  }
}
