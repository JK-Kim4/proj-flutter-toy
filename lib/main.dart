import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
  home: JWCard(),
));

class JWCard extends StatelessWidget {
  const JWCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Jongwan Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          children: [

          ],
        )
      )
    );
  }
}
