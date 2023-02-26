import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors/palette.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: Text(
                  'รีเซ็ทรหัสผ่าน',
                  style: TextStyle(fontSize: 22, color: Palette.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'อีเมลที่ลงทะเบียน',
                    fillColor: Palette.white,
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.deepBlue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'ตกลง',
                      style: TextStyle(color: Palette.white),
                    )),
              ),

            ],
          )),
        ),
      );
  }
}
