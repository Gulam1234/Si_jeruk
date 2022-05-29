import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skripsi_jeruk_android/Diagnosa/hasil_diagnosa.dart';
import 'package:skripsi_jeruk_android/helper/session_helper.dart';
import 'package:skripsi_jeruk_android/home.dart';
import 'package:skripsi_jeruk_android/home.dart';
import 'package:skripsi_jeruk_android/login/login.dart';
import 'package:skripsi_jeruk_android/login/register.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () async {
      final isLogin = await SessionHelper.checkisLogin();

      if (isLogin) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return const Home();
          }),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return const Login();
          }),
        );
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC5FF4A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70.0,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Text(
                    "CITRUS EXPERT",
                    style: TextStyle(
                        fontFamily: 'PortLligatSlab',
                        color: Color(0xffFD0909),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("SISTEM DIAGNOSA PADA JERUK",
                      style: TextStyle(
                          fontFamily: 'PortLligatSlab',
                          color: Color(0xffFD0909),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
