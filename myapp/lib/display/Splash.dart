import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:myapp/display/Home.dart';
import 'package:myapp/display/Login.dart';
import 'package:myapp/display/NoConnection.dart';

import 'dart:async';

import '../colors/palette.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/CGI_LOGO_TH1.png'),
            const CircularProgressIndicator(
              backgroundColor: Palette.white,
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(Palette.orange),
            )
          ],
        )),
      ),
    );
  }
}
