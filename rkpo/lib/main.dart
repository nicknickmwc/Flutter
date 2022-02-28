import 'package:flutter/material.dart';
import 'package:rkpo/pages/firstPage.dart';
import 'package:rkpo/pages/userInit.dart';
import 'package:rkpo/pages/progressList.dart';
import 'package:rkpo/pages/serverBot.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => firstPage(),
      '/userInit': (context) => userInit(),
    },
  ));
}



