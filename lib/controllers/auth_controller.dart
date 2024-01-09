import 'dart:convert';

import 'package:http/http.dart' as http;

class Auth{
  Future authenticaton(String uname , String pass )async{
    const _url ='http://10.0.2.2:8080/recv_data';

    var response = await http.post(Uri.parse(_url),body:jsonEncode({
      "uname":uname,
      "password":pass,

    }));
    print("Hello");
    if(response.statusCode ==200)
    {
      //var isLoggedin= json.decode(response.body);
      print("hey");
      var real = json.decode(response.body);
      print(real['classroom']);
      return real;

    }
    else{
      print("Error");
    }
  }
}