import 'dart:convert';

import 'package:intl/intl.dart' as intl;
import 'package:http/http.dart' as http;

class WorldTime{

  late String location; // location name
  late String time; // the time in this location
  late String flag; // url to assets flag icon
  late String url; //url endpoint
  late bool isDayTime; //true or false if daytime or not

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    try{
      final uri = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
      final response = await http.get(uri);

      Map data = jsonDecode(response.body);
      //print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      //print(datetime);
      //print(offset);
      offset = offset.substring(1,3);


      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = intl.DateFormat.jm().format(now);
    }catch(e){
      print(e);
      time = 'could not get time data';
    }
  }

}
