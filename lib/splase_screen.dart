import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabhaya/main.dart';

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
    data();
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
                    child: Text("Galaxy Planets",
                        style: GoogleFonts.alfaSlabOne(
                            fontSize: 40, color: Colors.yellow))),
                SizedBox(height: 50),
                CircularProgressIndicator(color: Colors.yellow),
              ],
            )));
  }
}
