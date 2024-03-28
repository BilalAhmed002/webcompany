import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Notification",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black ,
      ),
    );
  }
}
