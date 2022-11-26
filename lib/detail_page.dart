import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail_page extends StatefulWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  State<detail_page> createState() => _detail_pageState();
}

late AnimationController animationController;
late AnimationController nameanimationController;
late Animation nameAnimation;

class _detail_pageState extends State<detail_page>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 4000))
          ..repeat();
    nameanimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 5000))
          ..forward();

    nameAnimation = Tween<double>(begin: 0, end: 6).animate(CurvedAnimation(
        parent: nameanimationController, curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
          title: Text("${res.name}",
              style: GoogleFonts.aclonica(color: Colors.yellow, fontSize: 35)),
          centerTitle: true,
          backgroundColor: Color(0xff090e21)),
      backgroundColor: Colors.transparent,
      body: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/Hubble_ultra_deep_field.jpg"),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: _height * 0.4,
                    width: _width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white.withOpacity(0.4),
                          Colors.grey.withOpacity(0.5)
                        ]),
                        border: Border.all(
                            color: Colors.yellow,
                            width: 5,
                            strokeAlign: StrokeAlign.inside)),
                    child: RotationTransition(
                      turns: animationController,
                      alignment: Alignment.center,
                      child: Image.asset("${res.image}"),
                    )),
                SizedBox(height: 20),
                Container(
                    height: _height * 0.15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.grey.withOpacity(0.5)
                      ]),
                      border: Border.all(
                          color: Colors.yellow,
                          width: 5,
                          strokeAlign: StrokeAlign.center),
                    ),
                    child: AnimatedBuilder(
                      animation: nameAnimation,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: nameAnimation.value,
                          child: Text("${res.name}",
                              style: GoogleFonts.asar(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        );
                      },
                    )),
                SizedBox(height: 20),
                Container(
                    height: _height * 0.3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.grey.withOpacity(0.5)
                      ]),
                      border: Border.all(
                          color: Colors.yellow,
                          width: 5,
                          strokeAlign: StrokeAlign.center),
                    ),
                    child: Text(
                        textAlign: TextAlign.center,
                        "velocity :${res.velocity}\ndistance : ${res.distance}",
                        style: GoogleFonts.asar(
                            color: Colors.white,
                            fontSize: 53,
                            fontWeight: FontWeight.bold))),
                SizedBox(height: 20),
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.grey.withOpacity(0.4)
                      ]),
                      border: Border.all(
                          color: Colors.yellow,
                          width: 5,
                          strokeAlign: StrokeAlign.center),
                    ),
                    child: Column(
                      children: [
                        Text(
                            textAlign: TextAlign.center,
                            "description :",
                            style: GoogleFonts.asar(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                        Text(
                            textAlign: TextAlign.center,
                            "${res.description}",
                            style: GoogleFonts.asar(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold)),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
