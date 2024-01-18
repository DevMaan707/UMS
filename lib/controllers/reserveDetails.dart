import 'dart:convert';
import 'package:http/http.dart' as http;

class Reserve{
  Future sendData(String Roomno, String hours)async{
    const url ='http://192.168.55.234:8080/reserve';
    //print(block);
    int hour = int.parse(hours);

    var response = await http.post(Uri.parse(url),body:jsonEncode({
      "Room_No":Roomno,
      "Hour":hour,
    }));

    if(response.statusCode ==200)
    {
      return true;

    }
    else{
      return false;
    }
  }
}


