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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Hello',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0
                  )
              ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                'SHUN',
                style: TextStyle(
                    color: Colors.pinkAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                'CURRENT LEVEL',
                style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  )
              ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.greenAccent
                ),
                SizedBox(
                  width: 10.0
                ),
                Text(
                  'test@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}
