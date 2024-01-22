import 'dart:convert';

import 'package:http/http.dart' as http;

class Auth {
  Future authenticaton(String uname, String pass) async {
    const _url = 'http://65.0.5.92:8080/login';

    var response = await http.post(
      Uri.parse(_url),
      body: jsonEncode(
        {
          "username": uname,
          "password": pass,
        },
      ),
    );

    if (response.statusCode == 200) {
      var token = json.decode(response.body);
      if (token.containsKey("token")) {
        return token["token"].toString();
      }
    } else {
      return null;
    }
  }
}
