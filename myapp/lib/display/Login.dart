import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/colors/palette.dart';
import 'package:myapp/display/ResetPassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  'เข้าสู่ระบบ',
                  style: TextStyle(fontSize: 22, color: Palette.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'ชื่อผู้ใช้งาน',
                    fillColor: Palette.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
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
                              builder: (context) => const ResetPassword()),
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
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(color: Palette.white),
                    )),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      size: 15.0,
                      color: Palette.white,
                    ),
                    Text(
                      ' ชื่อผู้ใช้งาน หรือรหัสผ่านไม่ถูกต้อง กรุณาลองใหม่อีกครั้ง',
                      style: TextStyle(fontSize: 10, color: Palette.white),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      );
  }
}
