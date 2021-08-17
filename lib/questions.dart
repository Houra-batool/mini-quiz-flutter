import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final  questiontext;
  Questions(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questiontext,
          style: TextStyle(
            fontSize: 30,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
