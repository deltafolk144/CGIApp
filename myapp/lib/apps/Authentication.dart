import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myapp/apps/LoginRes.dart';

import 'CheckDatabase.dart';

class Authentication {
  String token = '';
  String url = 'http://192.168.2.221:3000/auth/login';

  Future<bool> login(username, password) async {
    // if login complete save token to internal storage
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'UserName': username, 'Password': password}),
    );

    print(response.body);

    if (response.statusCode == 201) {

      var token = CheckDatabase();
      await token.openDatabase();

      var data = loginResFromJson(response.body);
      token.saveToken(data.token.toString());
      return true;
      /* return response.statusCode.toString(); */
    } else {
      return false;
    }
  }

  logout() {
    // clear token in storage
  }

  checkLogin() {
    // get token from internal storage
  }

  checkToken() {
    // check token expire date time
  }
}
