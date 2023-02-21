import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/responsive/mobile.dart';
import 'package:instagram_app/responsive/responsive.dart';
import 'package:instagram_app/responsive/web.dart';
import 'package:instagram_app/screens/register.dart';
import 'package:instagram_app/screens/sign_in.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB_P-WaGXXw4mkbIGDCy07rrwn_n9Zrmc0",
            authDomain: "insta-67fe6.firebaseapp.com",
            projectId: "insta-67fe6",
            storageBucket: "insta-67fe6.appspot.com",
            messagingSenderId: "344506564485",
            appId: "1:344506564485:web:408e2e9993ee0cfc4a0eec"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Login(),
      // home: Resposive(
      //   myMobileScreen: MobileScerren(),
      //   myWebScreen: WebScerren(),
      // ),
    );
  }
}
