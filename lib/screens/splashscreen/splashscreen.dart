import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelui/widgets/routes/routes.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, AppRoutes.Route_Home);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 150,width: double.infinity,
              child: Icon(CupertinoIcons.airplane,color: Colors.deepPurple.shade100,size: 120,)),
          Text("Lets Travel Again",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
