import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
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
  int connection = 0;

  void reConnection() {
    setState(() {
      connection = 1;
    });

    Timer(
      const Duration(seconds: 2),
      () {
        setState(() {
          connection = 2;
        });
      },
    );
  }

  Future<bool> checkConnection() async {
    return await InternetConnectionChecker().hasConnection;
  }
  

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        if (checkConnection() == true) {
          setState(() {
            connection = 1;
          });
        } else {
          setState(() {
            connection = 1;
          });
        }
      },
    );
  }

  Widget build(BuildContext context) {
    if (connection == 0) {
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
    } else if (connection == 1) {
      return const Login();
    } else {
      return const NoConnection();
    }
  }
}
