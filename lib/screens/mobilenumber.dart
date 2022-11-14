import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/widget/whitebutton.dart';
import 'package:medme/widget/yellowbutton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class mobilenumber extends StatefulWidget {
  const mobilenumber({Key? key}) : super(key: key);

  @override
  State<mobilenumber> createState() => _mobilenumberState();
}

class _mobilenumberState extends State<mobilenumber> {
  var vid;
  otp() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber: '+91 ${c1.text}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        vid = verificationId;
        setState(() {
          q = false;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  bool q = true;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xfffF7F7F7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset("images/medme logo-01.png"),
              ),
              SizedBox(
                height: 5,
              ),
              q
                  ? Container(
                      child: Column(
                        children: [
                          Text(
                            "A 6 digit OTP will be sent to the number below",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              controller: c1,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  hintText: "Enter your mobile number",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                              onTap: () {
                                otp();
                              },
                              child: yellowbutt(text: "Send OTP")),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Want to change the SignIn Method?"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Go Back",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: [
                          Text(
                            "Verification",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enter the code sent to the numer",
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "+91 8948137912",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                                child: PinCodeTextField(
                                    controller: c2,
                                    keyboardType: TextInputType.phone,
                                    appContext: context,
                                    length: 6,
                                    cursorColor: Colors.black,
                                    enableActiveFill: true,
                                    onChanged: (value) {},
                                    pinTheme: PinTheme(
                                      selectedColor: Colors.black,
                                      inactiveColor: Colors.black,
                                      activeColor: Colors.black,
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(5),
                                      fieldHeight: 50,
                                      fieldWidth: 40,
                                      selectedFillColor: Colors.white,
                                      inactiveFillColor: Color(0xfffDBFB51),
                                      activeFillColor: Color(0xfffDBFB51),
                                    ))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                              onTap: () async {
                                String smsCode = c2.text;
                                PhoneAuthCredential credential =
                                    PhoneAuthProvider.credential(
                                        verificationId: vid, smsCode: smsCode);

                                // Sign the user in (or link) with the credential
                                await FirebaseAuth.instance
                                    .signInWithCredential(credential);
                              },
                              child: yellowbutt(text: "Confirm")),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Didn't recieve code?"),
                          Text(
                            "Resend it",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    ));
  }
}
