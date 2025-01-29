import 'package:flutter/cupertino.dart';
import 'package:travelui/screens/detailspage/detailspage.dart';
import 'package:travelui/screens/homescreens/homescreens.dart';
import 'package:travelui/screens/splashscreen/splashscreen.dart';

class AppRoutes {
  static const String Route_Splash = "/";
  static const String Route_Home = "/Home";
  static const String Route_Details = "/Details";



  static Map<String,WidgetBuilder> getRoutes () => {
    Route_Splash : (Context) => SplashScreen(),
    Route_Home : (Context) => HomeScreens(),
    Route_Details: (Context) => DetailspageScreen(eachitem: Map())

  };


}