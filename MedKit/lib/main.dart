import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medkit/doctor/doctorLogin.dart';
import 'package:medkit/otherWidgetsAndScreen/aboutUs.dart';
import 'package:medkit/otherWidgetsAndScreen/category.dart';
import 'package:medkit/patient/patientLogin.dart';
import 'animations/fadeAnimation.dart';

void main() => runApp(MedKitApp());

class MedKitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        '/DoctorLogin': (context) => DoctorLogin(),
        '/PatientLogin': (context) => PatientLogin(),
        '/AboutUs': (context) => AboutUs()
      },
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool hideIcon = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarColor: Colors.black.withOpacity(0.1)));
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: width,
            child: Stack(children: <Widget>[
              Positioned(
                top: height * 0.05,
                left: width - 240,
                child: FadeAnimation(
                  1,
                  Container(
                    width: width,
                    child: Image(image: AssetImage('assets/hospital.png')),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, height * 0.01),
                      height: height * 0.55,
                      width: width,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(
                                1,
                                Text(
                                  'MEDKIT',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.06),
                                )),
                            FadeAnimation(
                                1,
                                Text(
                                  'Pharmacy in Your Hands!',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5), fontSize: height * 0.017),
                                )),
                            SizedBox(
                              height: height * 0.26,
                            ),
                            Column(children: <Widget>[
                              Center(
                                child: (
                                    Container(
                                      height: 80,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Category()));
                                        },
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                                width: 60,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    shape: BoxShape.circle),
                                                child: hideIcon == false
                                                    ? Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                )

                                                    : Container()),
                                            SizedBox(
                                              height: height * 0.02,
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                              ),
                              Text(
                                  'Proceed!', textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(fontSize: 20)
                              )])
                          ])))
            ])));
  }
}


