import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    final response = await http.get(uri);

    Map data = jsonDecode(response.body);

    print(data['userId']);

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}
