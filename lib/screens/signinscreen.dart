import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medme/screens/homescreen.dart';
import 'package:medme/screens/mobilenumber.dart';
import 'package:medme/widget/whitebutton.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return homescreen(result: {
          "from":"google",
          "result":reslut
        });
      }));
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xfffF7F7F7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/medme logo-01.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height: 150,
                child: Image.asset("assets/images/health-insurance.png"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "\'Health is a state of complete harmony of the body, mind, and spirit.- B.K.S. Iyenga\'",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          "",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
             SizedBox(
            height: 50,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return mobilenumber();
                }));
              },
              child: whitebutt(
                text: "Continue With Phone",
                image: "phone-call.png",
                color: Color(0xfffDBFB51),
              )),
          SizedBox(
            height: 10,
          ),
          
          SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: (() {
                googleLogin();
              }),
              child: whitebutt(
                text: "Continue With Google",
                image: "search.png",
                color: Colors.white,
              )),
          SizedBox(
            height: 10,
          ),
          
        ],
      ),
    ));
  }
}
