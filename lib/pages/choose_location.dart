import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // simulate network request for a username
    await Future.delayed(Duration(seconds: 3), () {
      print('yoshi');
    });

    // simulate network request to get bio for the username
    Future.delayed(Duration(seconds: 2), () {
      print('vega, musician & egg collector');
    });


  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      )
    );
  }
}
