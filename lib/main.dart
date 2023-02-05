// import 'package:camera/camera.dart';
// import 'package:chatapp/Screens/CameraScreen.dart';
// import 'package:chatapp/Screens/Homescreen.dart';
// import 'package:chatapp/Screens/LoginScreen.dart';
// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappuntitled3/NewScreen/LoginPage.dart';
import 'package:whatsappuntitled3/Screens/CameraScreen.dart';
import 'package:whatsappuntitled3/Screens/Homescreen.dart';
import 'package:whatsappuntitled3/Screens/LoginScreen.dart';
import 'package:whatsappuntitled3/NewScreen/LadingScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

   // cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E),
      ),

      home: Homescreen(),


          // // fontFamily: "OpenSans",
          // primaryColor: Color(0xFF075E54),
          // accentColor: Color(0xFF128C7E)),
      // home: LoginScreen(),
    );
  }
}