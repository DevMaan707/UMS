import 'dart:convert';
import 'package:http/http.dart' as http;

class DB_crud{
  Future availableClassrooms(String block ,String classroomType , String number , String hours)async{
    const url ='http://192.168.0.105:8080/room-details';
    print(block);
    int hour = int.parse(hours);
    int day = int.parse(number);

    var response = await http.post(Uri.parse(url),body:jsonEncode({
      "block":block,
      "classroom":classroomType,
      "day":day,
      "hours":hour,
    }));

    if(response.statusCode ==200)
      {
        var availclass = json.decode(response.body);
        //print("Success");
        return availclass;

      }
    else{
      return false;
    }
 }
}


