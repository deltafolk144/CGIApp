import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/colors/palette.dart';
import 'package:myapp/display/Home.dart';
import 'package:myapp/display/ResetPassword.dart';

import '../apps/Authentication.dart';
import 'HomeNews.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login<bool>(email, password) async {
    var login = Authentication();
    var res = await login.login(email, password);
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
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
                        'เข้าสู่ระบบ',
                        style: TextStyle(fontSize: 22, color: Palette.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        autofocus: true,
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'กรุณากรอกอีเมลที่ลงทะเบียน';
                          }
                          return null;
                        },
                        style: TextStyle(color: Palette.white),
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: 'ชื่อผู้ใช้งาน',
                          fillColor: Palette.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        controller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'กรุณากรอกอีเมลที่ลงทะเบียน';
                          }
                          return null;
                        },
                        style: TextStyle(color: Palette.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'รหัสผ่าน',
                          fillColor: Palette.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()),
                              );
                            },
                            child: Text(
                              'ลืมรหัสผ่าน',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Palette.white),
                            ),
                          ),
                        ],
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
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              var result = await login(email.text, password.text);
                              if (result == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeNews()),
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg: "ชื่อผู้ใช้งาน หรือรหัสผ่านไม่ถูกต้อง กรุณาลองอีกครั้ง",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 4,
                                    backgroundColor: Palette.white,
                                    textColor: Colors.black,
                                    fontSize: 12.0);
                              }
                            }
                          },
                          child: const Text(
                            'เข้าสู่ระบบ',
                            style: TextStyle(color: Palette.white),
                          )),
                    ),
                  ],
                ))),
      ),
    );
  }
}
