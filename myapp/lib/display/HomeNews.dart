import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/colors/palette.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({super.key});

  @override
  State<HomeNews> createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*         appBar: AppBar(
          backgroundColor: Palette.white,
          shadowColor: Colors.transparent,
          title: Text('ข่าวสาร'),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ), */
        backgroundColor: Palette.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ข่าวสาร',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('ส',
                    style: TextStyle(fontSize: 16),),
                  ],
                ),
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(color: Palette.orange, shape: BoxShape.circle),
              )
            ],
          ),
        ));
  }
}
