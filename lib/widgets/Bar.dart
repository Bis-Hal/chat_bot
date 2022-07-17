import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          "Take Care",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.white
        ),
      ),

    );
  }
}
