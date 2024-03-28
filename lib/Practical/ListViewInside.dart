import 'package:flutter/material.dart';

class ListViewInside extends StatefulWidget {
  const ListViewInside({super.key});

  @override
  State<ListViewInside> createState() => _ListViewInsideState();
}

class _ListViewInsideState extends State<ListViewInside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Text('Heelo1'),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(8),
                  color: Colors.deepOrangeAccent,
                  width: 100,
                  child: Text('${index +1}'),
                );
              },
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Column(
              children: [
                Text('Hello',)
              ],
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Text('Heelo1'),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Text('Heelo1'),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Text('Heelo1'),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            alignment: Alignment.center,
            color: Colors.amber.shade500,
            child: Text('Heelo1'),
          ),
        ],
      ),
    );
  }
}
