import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'backBtnAndImage.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BackBtn(),
            SizedBox(
              height: height * 0.0001,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'About Us',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: height * 0.06),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/dscn.png',
                        height: height * 0.08,
                      ),
                      Text(
                        'L5 SEM-2 Students',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: height * 0.02,),
                      Text('Developed By: ', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Santosh Rokaya'
                          '\nAryan Tibrewal'
                          '\nSushant Rajkarnikar'
                          '\nChakra Singh Thagunna', textAlign: TextAlign.center,),
                      SizedBox(height: height * 0.05,),
                      Image.asset(
                        'assets/cui.png',
                        height: height * 0.1,
                      ),
                      Text('University of Bedfordshire, United Kingdom',
                          style: TextStyle(
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: height * 0.055,),
                      Image.asset(
                          'assets/pcps.png',
                          height: height * 0.1),
                      SizedBox(height: height * 0.004,),
                      Text('Patan College for Professional Studies, Nepal',
                          style: TextStyle(
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: height * 0.1,),
                      Text('@Copyrights All Rights Reserved, 2022',
                          style: TextStyle(fontSize: height * 0.025))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
