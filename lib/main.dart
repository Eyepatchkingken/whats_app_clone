import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/pages/whats_app_home.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
final firstCamera = cameras.first;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  
  runApp( MyApp());
}
// void main() => runApp(MyApp());


/* main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();

  } on CameraException catch (e) {
   logError(e.code, e.description);
  }
  runApp(MyApp());
} */

void logError(String code, String description) {
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xff25D366)),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(cameras: firstCamera,),
    ));
  }
  
}
