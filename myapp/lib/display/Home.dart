///////////////////////////////////// THIS IS HOMEPAGE CONTROLLER ////////////////////////////////////////
//Stage 0 => Check internet connection / Loading splash
//Stage 1 => Check Login token in database if noData return => false / else return => true
//Stage 2 => if noData login token Change state Login() / else Change state HomeNew()
//////////////////////////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/display/Splash.dart';
import '../apps/CheckDatabase.dart';
import 'Login.dart';
import 'HomeNews.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int isLogin = 0;

  @override
  void initState() {
    super.initState();
    checkIsLogin();
  }

  Widget build(BuildContext context) {
    if (isLogin == 2) {
      return HomeNews();
    } else if (isLogin == 1) {
      return Login();
    } else {
      return Splash();
    }
  }

  Future checkIsLogin() async {
    var check = CheckDatabase();
    await check.openDatabase();
    if (await check.getToken() == true) {
      setState(() {
        isLogin = 2;
      });
    } else {
      setState(() {
        isLogin = 1;
      });
    }
  }
}
