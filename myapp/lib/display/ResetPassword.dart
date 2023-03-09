import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors/palette.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  int status = 0;
  String email = '';

  final myController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    if (status == 0) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.blue,
          shadowColor: Colors.transparent,
          // leading: Icon(Icons.chevron_left),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
          child: Center(
            child: Form(
                key: formKey,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        controller: myController,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'กรุณากรอกอีเมลที่ลงทะเบียน';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Palette.white),
                        decoration: const InputDecoration(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              setState(() {
                                status = 1;
                              });
                            }
                          },
                          child: const Text(
                            'ตกลง',
                            style: TextStyle(color: Palette.white),
                          )),
                    ),
                  ],
                )),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
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
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    children: [
                      Text(
                          'ส่งลิงก์สำหรับรีเซ็ทรหัสผ่านไปยัง ${myController.text} แล้ว กรุณาตรวจสอบอีเมลของคุณ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Palette.white)),
                    ],
                  )),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.deepBlue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
}
