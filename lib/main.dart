import 'package:flutter/material.dart';
import 'package:flutter_toy/pages/choose_location.dart';
import 'package:flutter_toy/pages/loading.dart';
import 'package:flutter_toy/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/location',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));