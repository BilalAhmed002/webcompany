
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:webcompany/Hoempage/home.dart';
import 'package:webcompany/Notification/chat.dart';
import 'package:webcompany/Notification/notification.dart';
import 'package:webcompany/login.dart';

import 'Profile/profile.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context) =>const Login(),
      'home':(context) =>const home(),
      'profile': (context) => const profile(),
      'notification': (context) => const notification(),
      'chat': (context) => const chat(),
     // 'bottomnavigationBar': (context) =>  bottomnavigationBar(),
    },
  ));
}