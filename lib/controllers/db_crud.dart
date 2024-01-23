import 'dart:convert';
import 'package:http/http.dart' as http;

class DB_crud{
  Future availableClassrooms(String block ,String classroomType , String number , String hours,String num_hours)async{
    const url ='http://65.0.5.92:8082/room-details';
    print(block);
    int hour = int.parse(hours);
    int day = int.parse(number);
    int num =int.parse(num_hours);

    var response = await http.post(Uri.parse(url),body:jsonEncode({
      "block":block,
      "classroom":classroomType,
      "day":day,
      "hours":hour,
      "no_hours":num,
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


