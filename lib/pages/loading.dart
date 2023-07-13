import 'package:flutter/material.dart';
import 'package:flutter_toy/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'seoul', flag: 'korea.png', url: 'asia/seoul');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(50),
        child: Text(time)
      ),
    );
  }
}
