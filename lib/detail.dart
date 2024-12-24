import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  //const Detail({super.key});
  String name;
  Detail({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "$name",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "$name",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
