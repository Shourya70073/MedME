import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medme/medInfo.dart';
import 'package:medme/screens/addDetails.dart';
import 'package:medme/screens/brainTumour.dart';
import 'package:medme/screens/homescreen.dart';
import 'package:medme/screens/introscreen.dart';
import 'package:medme/screens/loginsignup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medme/screens/medscan.dart';
import 'package:medme/screens/scannedResult.dart';
import 'package:medme/screens/symptomp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences? sp;
  Widget? first;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkforFirstScreen();
  }

  // void checkforFirstScreen() async{
  //       if(await sp!.getBool("isIntroCompleted")==true){
  //               if(await sp!.getBool("isRegisterCompleted")==true){
  //                 if(await sp!.getBool("isSignInCompleted")==true){
  //                   first=homescreen(result:  )
  //                 }
  //               }
  //       }
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Med Me",
      home: introscreen(),
    );
  }
}
