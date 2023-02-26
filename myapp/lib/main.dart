import 'package:flutter/material.dart';
import 'package:myapp/display/Splash.dart';

import 'colors/palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CGI',
        home: Splash(),
        theme: ThemeData(
          scaffoldBackgroundColor: Palette.blue,
        ),
    );
  }
}
void main() {
  var myapp = HomePage();
  runApp(myapp);
}
