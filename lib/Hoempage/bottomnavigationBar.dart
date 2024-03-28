import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnavigationBar extends StatefulWidget {
  const bottomnavigationBar({super.key});

  @override
  State<bottomnavigationBar> createState() => _bottomnavigationBarState();
}

class _bottomnavigationBarState extends State<bottomnavigationBar> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'BottomNavigationBar',
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  ),
);
  }
}
