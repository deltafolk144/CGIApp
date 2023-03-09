import 'package:flutter/material.dart';
import 'package:myapp/apps/CheckDatabase.dart';
import 'package:myapp/display/Home.dart';
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
      home: Home(),
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.blue,
        primarySwatch: Palette.white,
      ),
    );
  }
}

void main() {
  
  //print(test);
  runApp(HomePage());
  //testtest();
}

/* testtest() async {
  var test = CheckDatabase();
  var ll = await test.openDatabase();
  print(ll);

  //test.saveToken('888888888888888888888888888888');
  test.getToken();
} */
